# Setup

Run the commands below.

```console
$ git clone https://github.com/K-Sato1995/GraphqlApi.git
$ bundle install
$ rake db:migrate
```

# Queries and Mutations

Run `rails s` and send following queries and mutations.

## Get posts

```graphql
{
  posts {
    id
    title
    description
    comments
  }
}
```

## Get a post

```graphql
{
  post(id: 1) {
    id
    title
    description
    comments
  }
}
```

## Creating a post

```graphql
mutation {
  createPost(input: { title: "title1", description: "description1" }) {
    post {
      id
      title
      description
    }
  }
}
```

## Updating a post

```graphql
mutation {
  updatePost(input: { id: 1, title: "Updated", description: "UPdated" }) {
    post {
      id
      title
      description
    }
  }
}
```

## Deleting a post

```graphql
mutation {
  deletePost(input: { id: 1 }) {
    post {
      id
      title
      description
    }
  }
}
```

## Creating a comment

```graphql
mutation {
  createComment(input: { postId: 3, content: "NEW COMMENT" }) {
    comment {
      id
      content
      post {
        id
        title
        comments {
          id
          content
        }
      }
    }
  }
}
```

## Creating a User

```graphql
mutation {
  createUser(
    input: {
      name: "title1"
      authProvider: { email: { email: "els@e.scom", password: "passsssord" } }
    }
  ) {
    user {
      id
      name
      email
    }
  }
}
```

## Signing in a User

```graphql
mutation {
  signinUser(
    input: { email: { email: "els@e.scom", password: "passsssord" } }
  ) {
    token
  }
}
```

# Query for getting all the related information

```graphql
{
  posts {
    id
    title
    description
    status
    mediaItem {
      __typename
      ... on AudioClip {
        id
        duration
      }
      ... on VideoClip {
        id
        previewUrl
        resolution
      }
    }
    comments {
      id
      content
    }
  }
}
```
