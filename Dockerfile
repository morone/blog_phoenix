FROM morone/phoenix:1.3

WORKDIR /app

ADD . /app/

RUN mix deps.get

RUN mix local.rebar

CMD ["mix", "phoenix.server"]