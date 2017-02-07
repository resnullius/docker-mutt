# docker-mutt

## WHAT IS THIS?

Docker image based on Debian Unstable with `mutt-patched`.

## HOW TO RUN IT?

    docker run --rm -ti \
      -v $PWD/configs:/Configs \
      -v $PWD/secrets:/Secrets \
      -v $PWD/Mail:/Mail \
      resnullius/mutt

## DOES THIS RECEIVES EMAILS?

No, there's [resnullius/offlineimap](https://github.com/resnullius/docker-offlineimap) for that function.

## AUTHOR AND LICENSE
ⓒ 2017, Jose-Luis Rivas `<me@ghostbar.co>`.

This software is licensed under the MIT terms, you can find a copy of the
license on the `LICENSE` file in this repository.
