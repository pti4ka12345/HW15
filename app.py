from flask import Flask
import json
import sqlite3


app = Flask(__name__)


@app.get('/<itemid>')
def search_id():
    with sqlite3.connect("animal.db") as connection:
        connection.row_factory = sqlite3.Row
        result = connection.execute(
            """
        SELECT *
        from animals
        join animal_type at2
        where id = {itemid}
        """
        ).fetchone()

    result = dict(result)

    return app.response_class(
        json.dumps(result),
        status=200,
        mimetype="aplication/json"
    )

if __name__ == "__main__":
    app.run(host="localhost", port=8080)