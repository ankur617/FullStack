#!/bin/bash
export DATABASE_URL="postgresql://postgres@localhost:5432/postgres"
export EXCITED="true"
export token_executive_producer="eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6IkttcUhyR2pYYUlBNGJ2eGN5YTZRcyJ9.eyJpc3MiOiJodHRwczovL2Fua3VyNjE3LnVzLmF1dGgwLmNvbS8iLCJzdWIiOiJhdXRoMHw2MjdmNzJiZjlkMDQyYzAwNjkzOTE3NTUiLCJhdWQiOiJjYXN0aW5nYWdlbmN5IiwiaWF0IjoxNjU3OTgwOTUyLCJleHAiOjE2NTgwNjczNTIsImF6cCI6IlZuUlBOb2lSNVVsNk5HVE1qRXQ0eE9uVkVNdnA3VXdvIiwic2NvcGUiOiIiLCJwZXJtaXNzaW9ucyI6WyJkZWxldGU6YWN0b3JzIiwiZGVsZXRlOm1vdmllcyIsImdldDphY3RvcnMiLCJnZXQ6bW92aWVzIiwicGF0Y2g6YWN0b3JzIiwicGF0Y2g6bW92aWVzIiwicG9zdDphY3RvcnMiLCJwb3N0Om1vdmllcyJdfQ.NM-jMdG2j4J7iWZwSFg3QRwzsrZsBFFwt9a2QgaGsl6D9hGElyM-OGvPJ4ZTAK35gMiU74ALa8MH1nWPXlMNjCE6DMUJzZVs-eujF3U93phP7zdgfivRrZtAjQG3bnyXxqTfU5l6T8BQ50AhtPKpFctBuu8ksmEeC34u22PMjOfVKaVog44BdMQme7n3yvATgg7sgLWAZWRqBdcTI3rI4Bx6TL-PaOTkOzAc5k1KjzgQYgmnohRYeyShL8ejfSr62Lr0OiUXh-5ECA5A-AjZT8vixZYBxF6hGDOxXY3iBUH2LeBCRkG_ikaSOSN_0Wr59iJvm44YOWZQhgeil5o2fw"
export token_casting_assitant="eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6IkttcUhyR2pYYUlBNGJ2eGN5YTZRcyJ9.eyJpc3MiOiJodHRwczovL2Fua3VyNjE3LnVzLmF1dGgwLmNvbS8iLCJzdWIiOiJhdXRoMHw2MmNhZDAyOTQxODE0Njc1YTU5MDQxNDgiLCJhdWQiOiJjYXN0aW5nYWdlbmN5IiwiaWF0IjoxNjU3OTgxMTAzLCJleHAiOjE2NTgwNjc1MDMsImF6cCI6IlZuUlBOb2lSNVVsNk5HVE1qRXQ0eE9uVkVNdnA3VXdvIiwic2NvcGUiOiIiLCJwZXJtaXNzaW9ucyI6WyJnZXQ6YWN0b3JzIiwiZ2V0Om1vdmllcyJdfQ.EMLYubaf58s0wghaFXl6ruJ_y_r9SxAVOHUtJAcwxBgga0ursqcM2alSskCoQVEqhk1Q98oWCGqKgabwuQBKykriXoSMXWCAZl_ksshPjsSC0OtI3OAlUSanaV62yK-iHC-wMC6ckzUwu1BeCFmoafWm6uxcIZnaK87w5cE0QP1fU4jWF61Q4b_PysQ4rAVxnQfWsPgFiIeR-1V271-nBPrhvbnuh-qFyh0xBT3r-AioGQ-fi-5CyHOpG7bCCH4kiRziLTKN3BiiSvHI1rw0qXJcRsoLoeh7syc8bW7GDgg4ZZ8gMyknY7W0Cr3knqn5b2BLZhDVnFjFxtyGGCGntw"
export token_casting_director="eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6IkttcUhyR2pYYUlBNGJ2eGN5YTZRcyJ9.eyJpc3MiOiJodHRwczovL2Fua3VyNjE3LnVzLmF1dGgwLmNvbS8iLCJzdWIiOiJhdXRoMHw2Mjc2MGEzMDA0YjBmYTAwNjkyZmVhYzEiLCJhdWQiOiJjYXN0aW5nYWdlbmN5IiwiaWF0IjoxNjU3OTgxMDMyLCJleHAiOjE2NTgwNjc0MzIsImF6cCI6IlZuUlBOb2lSNVVsNk5HVE1qRXQ0eE9uVkVNdnA3VXdvIiwic2NvcGUiOiIiLCJwZXJtaXNzaW9ucyI6WyJnZXQ6YWN0b3JzIiwiZ2V0Om1vdmllcyIsInBhdGNoOmFjdG9ycyIsInBhdGNoOm1vdmllcyIsInBvc3Q6YWN0b3JzIiwicG9zdDptb3ZpZXMiXX0.krCCE66_1R_Bfei9Kydj9DbRkuSjNu2hhc597pbpT8VTFiqVlPGQ85V6sNLV96-NxDViEuJHjryIUpRWFbW2MwQxDQUwjC4Wwz1flHKU5O2VQVJnigO8XE9Zi6mE0BCYBX3C9EUlIot-N4BNGvFAZ6LXLSd2_Ln8763Sjw_W_2nidPQfvtlEA32U-cNO1Ia5zFwlMvBHztZp3DtDSB2KjFSHeDS0CYIU9NWeVhejK9qae4Cyk4axbuRQdHUT6617WqiMY6dxxXMPNYX8zrs7Jt7YMYplGraqasGiEY00-zl4X4DgKcffFsXWi2_lfriJfZKrzxgtU4X4h1c0AvndXA"
echo "setup.sh script executed successfully!"
