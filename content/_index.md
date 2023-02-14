---
# Leave the homepage title empty to use the site title
title: Sébastien Valade
date: 2023-02-01
type: landing

sections:
  # - block: about.avatar
  # - block: v1/about
  - block: v1/about-custom
    id: about
    content:
      # Choose a user profile to display (a folder name within `content/authors/`)
      username: admin
      # Override your bio text from `authors/admin/_index.md`?
      text:  
    design:
      spacing:
        padding: ["2%", "5%", "20px", "2%"] # section spacing top, right, bottom, left

  - block: collection
    id: publications
    content:
      title: Publications
      text: <h2><b><u>All Publications</u>:</b><br><a href="./publication/" _target="_blank">View / filter all 34 academic publications</a></h2><br>
        <h2><b><u>Latest Publications</u>:</b></h2>
      filters:
        folders:
          - publication
        exclude_featured: true
    design:
      columns: '2'
      view: citation
      spacing:
        padding: ["20px", "5%", "20px", "2%"] # section spacing top, right, bottom, left

  - block: collection
    id: talks
    content:
      title: Talks
      text: <h2><b><u>All Talks</u>:</b><br><a href="./event/" _target="_blank">View all talks/posters</a></h2><h2><b><u>Latest Talks</u>:</b></h2>
      filters:
        folders:
          - talk
    design:
      columns: '2'
      view: community/citation-talk
      spacing:
        padding: ["20px", "5%", "20px", "2%"] # section spacing top, right, bottom, left

  - block: collection
    id: lectures
    content:
      title: Lectures
      subtitle: ''
      text: ''
      count: 0  # how many pages to display (0 = all pages)
      # Filter on criteria
      filters:
        folders:
          - lectures
        author: ""
        category: ""
        tag: ""
        exclude_featured: false
        exclude_future: false
        exclude_past: false
        publication_type: ""
      # Choose how many pages you would like to offset by
      offset: 0
      # Page order: descending (desc) or ascending (asc) date.
      order: desc
    design:
      # Choose a layout view
      view: compact
      columns: '2'
      spacing:
        padding: ["20px", "5%", "20px", "2%"] # section spacing top, right, bottom, left

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
      autolink: true  # Automatically link email and phone or display as text?
    design:
      columns: '2'
      spacing:
        # NB: leave bottom spacing after last section, so that menu section higlight works
        padding: ["20px", "5%", "175px", "2%"] #section spacing top, right, bottom, left
---
