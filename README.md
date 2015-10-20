# EctoDefaults

```elixir
$ iex -S mix

# This works
iex(1)> EctoDefaults.Repo.insert! EctoDefaults.Post.changeset(%EctoDefaults.Post{}, %{"text" => "a new post"})
21:10:04.676 [debug] INSERT INTO "posts" ("text") VALUES ($1) RETURNING "id" ["a new post"] OK query=68.5ms queue=1.8ms
%EctoDefaults.Post{__meta__: #Ecto.Schema.Metadata<:loaded>, id: 16, text: "a new post"}

# This doesn't
iex(2)> EctoDefaults.Repo.insert! EctoDefaults.User.changeset(%EctoDefaults.User{}, %{name: "john"})
21:10:16.755 [debug] INSERT INTO "users" ("id", "name") VALUES ($1, $2) [nil, nil] ERROR query=3.2ms
** (Postgrex.Error) ERROR (not_null_violation): null value in column "id" violates not-null constraint
    (ecto) lib/ecto/adapters/sql.ex:483: Ecto.Adapters.SQL.model/6
    (ecto) lib/ecto/repo/model.ex:257: Ecto.Repo.Model.apply/4
    (ecto) lib/ecto/repo/model.ex:83: anonymous fn/10 in Ecto.Repo.Model.do_insert/4
    (ecto) lib/ecto/repo/model.ex:14: Ecto.Repo.Model.insert!/4
```
