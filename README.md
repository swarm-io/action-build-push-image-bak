<!-- start title -->

# GitHub Action:Build and Push image

<!-- end title -->
<!-- start description -->

Builds an image, pushes to artifact registry, and caches to gha as well as the `cache` tag

<!-- end description -->
<!-- start contents -->
<!-- end contents -->
<!-- start usage -->

```yaml
- uses: swarm-io/action-build-push-image@undefined
  with:
    # docker build secrets, newline separated string key=value
    # Default: gitPat=${{ secrets.GIT_RUNNER_TOKEN }}
    secrets: ""

    # tag name, i.e. `event-stream`
    # Default: ${{ github.event.repository.name }}
    tag-name: ""

    # git tags to push
    # Default: ${{ secrets.GAR_IMAGES_REPO }}/${{ inputs.tag-name }}:${{ github.event.release.tag_name }} ${{ secrets.GAR_IMAGES_REPO }}/${{ inputs.tag-name }}:latest
    tags: ""
```

<!-- end usage -->
<!-- start inputs -->

| **Input**      | **Description**                                          |                                                                        **Default**                                                                        | **Required** |
| :------------- | :------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------: | :----------: |
| **`secrets`**  | docker build secrets, newline separated string key=value |                                                         `gitPat=${{ secrets.GIT_RUNNER_TOKEN }}`                                                          |  **false**   |
| **`tag-name`** | tag name, i.e. `event-stream`                            |                                                           `${{ github.event.repository.name }}`                                                           |  **false**   |
| **`tags`**     | git tags to push                                         | `${{ secrets.GAR_IMAGES_REPO }}/${{ inputs.tag-name }}:${{ github.event.release.tag_name }} ${{ secrets.GAR_IMAGES_REPO }}/${{ inputs.tag-name }}:latest` |  **false**   |

<!-- end inputs -->
<!-- start outputs -->
<!-- end outputs -->
<!-- start [.github/ghdocs/examples/] -->
<!-- end [.github/ghdocs/examples/] -->
