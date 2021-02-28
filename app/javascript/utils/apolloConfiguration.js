import { ApolloClient } from "apollo-client";
import Vue from "vue";
import { createHttpLink } from "apollo-link-http";
import { InMemoryCache } from "apollo-cache-inmemory";
import VueApollo from "vue-apollo";

let csrfToken = null;
if (process.env.NODE_ENV !== "test" ) {
  csrfToken = document
    .querySelector("meta[name=csrf-token]")
    .getAttribute("content");
}

const customFetch = (uri, options) => {
  return fetch(uri, options).then((response) => {
    if (response.status >= 500) {
      // or handle 400 errors
      return Promise.reject(response.status);
    }
    return response;
  });
};

const cache = new InMemoryCache();

const apolloClient = new ApolloClient({
  link: createHttpLink({
    uri: "/graphql",
    fetch: customFetch,
    credentials: "same-origin",
    headers: {
      "X-CSRF-Token": csrfToken,
    },
  }),
  cache: cache
});

Vue.use(VueApollo);
Object.defineProperty(Vue.prototype, '$cache', {value: cache})

export const apolloProvider = new VueApollo({
  defaultClient: apolloClient,
  defaultOptions: {
    $query: {
      fetchPolicy: "cache-and-network"
    }
  }
});
