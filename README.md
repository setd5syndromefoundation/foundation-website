# SETD5 Syndrome Foundation — Website

This repository contains the source for the SETD5 Syndrome Foundation website. It is a static website built with HTML and hosted for free using GitHub Pages.

## Live site

- Public URL (custom domain): https://setd5syndrome.org
- - GitHub Pages URL: https://setd5syndromefoundation.github.io/foundation-website/
 
  - The custom domain is configured via the `CNAME` file in this repository and DNS records managed in the foundation's Cloudflare account. If the domain ever stops resolving, check both the `CNAME` file here and the DNS settings in Cloudflare.
 
  - ## How hosting works
 
  - - The site is served by **GitHub Pages** from the `main` branch of this repository.
    - - Any change committed to `main` is automatically published to the live site within a few minutes.
      - - Deployment status can be viewed under the repository's **Actions** tab and the **github-pages** deployment.
       
        - ## How to edit the site
       
        - 1. Sign in to the `setd5syndromefoundation` GitHub account.
          2. 2. Open the file you want to change (the site is plain HTML, plus images).
             3. 3. Edit the file directly on GitHub (pencil icon) or commit changes from a local clone.
                4. 4. Commit to the `main` branch. The live site updates automatically.
                  
                   5. For content changes (text, photos, team members), look for the relevant HTML file and update it. Images referenced by the pages live in this repository's root.
                  
                   6. ## Repository contents
                  
                   7. - HTML pages that make up the website
                      - - Image assets used across the site
                        - - `CNAME` — defines the custom domain for GitHub Pages
                          - - Foundation documents (meeting minutes, agendas, presentations)
                           
                            - > **Note:** This is a **public** repository. Anything committed here — including any PDF or document — is downloadable by anyone on the internet. Do not commit confidential information. Review whether internal documents belong here or in a private location.
                              >
                              > ## Access & ownership
                              >
                              > - The repository is owned by the `setd5syndromefoundation` GitHub account.
                              > - - Access should be limited to current board members or trusted maintainers.
                              >   - - **Recommended:** Convert this from a single personal account into a GitHub **Organization** (free for nonprofits) so multiple board members can hold owner access, rather than relying on one shared login.
                              >    
                              >     - ## Handoff notes
                              >    
                              >     - - Domain DNS is managed in the foundation's **Cloudflare** account (tech@setd5syndrome.org).
                              >       - - The custom domain auto-renew and expiration should be monitored in Cloudflare.
                              >         - - Keep this README updated as the site, hosting, or contacts change.
                              >          
                              >           - ## Contacts
                              >          
                              >           - - Foundation tech contact: tech@setd5syndrome.org
                              >             - 
