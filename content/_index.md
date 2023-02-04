---
# Leave the homepage title empty to use the site title
title: Sébastien Valade
date: 2023-02-01
type: landing

sections:
  - block: about.avatar
    id: about
    content:
      # Choose a user profile to display (a folder name within `content/authors/`)
      username: admin
      # Override your bio text from `authors/admin/_index.md`?
      text:  
    design:
      spacing:
        padding: ["10px", "0", "20px", "0"] # section spacing top, right, bottom, left
  - block: collection
    id: publications
    content:
      title: Publications
      text: <h2><b>Latest Publications</b></h2>
        {{% callout note %}}
        Quickly discover relevant content by [filtering publications](./publication/).
        {{% /callout %}}
      filters:
        folders:
          - publication
        exclude_featured: true
    design:
      columns: '2'
      view: citation
      spacing:
        padding: ["20px", "0", "20px", "0"] # section spacing top, right, bottom, left
  - block: contact
    id: contact
    content:
      title: Contact
      subtitle:
      text: 
      email: valade@igeofisica.unam.mx
      address:
        street: UNAM - Instituto de Geofísica - Ciudad Universitaria, Circuito de la Investigación Científica s/n
        city: Mexico City
        region: 
        postcode: '04510'
        country: Mexico
        country_code: MX
      contact_links:
        - icon: twitter
          icon_pack: fab
          name: Mounts System
          link: 'https://twitter.com/MountsSystem'
      # Automatically link email and phone or display as text?
      autolink: true
    design:
      columns: '2'
      spacing:
        padding: ["20px", "0", "0", "0"] # section spacing top, right, bottom, left
---
