---
title: Component system quarks
layout: post
category: dev
tags: [component, quarks, atomic, react]
---

# Developing component systems with Quarks

*Disclaimer: I use the term 'quark' because in Atomic Design, the meaning of an 'atom' has different meanings between individuals, disciplines, and teams*

## What is a 'quark'?

A quark is an irreducible design or code element from which components in atomic design may be constructed.

It's become apparent that for some people, a form input _with a label_ might be considered an 'atom', whereas others might consider it a 'molecule' - rather than fuel the fires of contention I've chosen to re-define the building blocks.

eg. Concretely, the simplest "input field with label" component mentioned above would be defined from something like the following Quarks

- `<Text />` quark
- `<Input />` quark
- (optionally) `<Icon />` quark

These are then combined into our basic atom:

```jsx
const InputField = ({...props}) => (

)

// usage

<InputField
  label=<Text type='label'>Test field</Text>
  icon=<Icon name='attention' />
  >

// or maybe

const InputField = ({children, ...props}) => {
  const Labels  = filterChildrenByType(children, Text)
  const Icon    = filterChildrenByType(children, Icon)

  return (
    <div>

    </div>
  )
}

<InputField>
  <!-- child types are restricted and only the
      parent element controls their position ->
  <Text type='label'>Test field</Text>
  <Icon name='attention' />
</InputField>

```

*Side note: Whilst it's tempting to make life easy and describe them as having a 1:1 correlation with HTML tags, this still isn't technically right*
