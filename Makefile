# docker compose up: https://docs.docker.com/engine/reference/commandline/compose_up/
u:
				docker compose up
# docker compose up -d: https://docs.docker.com/engine/reference/commandline/compose_up/
ud:
				docker compose up -d
# docker compose build: https://docs.docker.com/engine/reference/commandline/compose_build/
b:
				docker compose build
# docker compose down: https://docs.docker.com/engine/reference/commandline/compose_down/
down:
				docker compose down

# docker compose exec: https://docs.docker.com/engine/reference/commandline/compose_exec/

#########################################################################################
#                                     Ping Test	                                        #
#########################################################################################

# dbコンテナとの疎通テスト 
ping@db:
				docker compose exec db ping db
# appコンテナとの疎通テスト 
ping@app:
				docker compose exec app ping app

#########################################################################################
#                                Create Next.js	Project                                 #
#########################################################################################

# First Step Create NextJS Project install.
create@next:
				docker-compose run --no-deps --rm app sh -c 'npx create-next-app@latest . --ts --tailwind --eslint --app --src-dir --import-alias "@/*" --use-npm'

# Second Step dependencies install packages.
i@saves:
				docker-compose run --no-deps --rm app sh -c 'npm i next-auth classnames dayjs @heroicons/react @next-auth/prisma-adapter @prisma/client zod swr'

# third Step devDependencies install packages.
i@saves-D:
				docker-compose run --no-deps --rm app sh -c 'npm i -D daisyui@latest prisma prettier eslint-config-prettier eslint-plugin-tailwindcss ts-node'

#########################################################################################
#                                     Prisma ORM	                                      #
#########################################################################################

# Prismaコマンドの出力
p@:
				docker compose exec app npx prisma
p@init:
				docker compose exec app npx prisma init
p@migrate:
				docker compose exec app npx prisma migrate dev --name init
p@push:
				docker compose exec app npx prisma db push

#########################################################################################
#                                 Postgresql Command	                                  #
#########################################################################################

pg@conect:
				psql -h localhost -p 5432 app_db -U msk1206
