
import { BaseFeature } from './feature/base/BaseFeature'
import { TestFeature } from './feature/test/TestFeature'



const FEATURE_CLASS: Record<string, typeof BaseFeature> = {
   test: TestFeature,

}


class Config {

  makeFeature(this: any, fn: string) {
    const fc = FEATURE_CLASS[fn]
    const fi = new fc()
    // TODO: errors etc
    return fi
  }

  // False for a feature added at runtime via options.extend (station's
  // adopt path) - the constructor uses this to skip makeFeature for names
  // no generated class backs.
  hasFeature(this: any, fn: string) {
    return null != FEATURE_CLASS[fn]
  }


  main = {
    name: 'Dorognoe',
        slug: "dorognoe",
    version: "0.0.1",
    target: "ts",

  }


  feature = {
     test:     {
      "options": {
        "active": false
      }
    },

  }


  options = {
    base: "https://dorognoe.ru",

    headers: {
      "content-type": "application/json"
    },

    entity: {
      
      city: {
      },

    }
  }


  entity = {
    "city": {
      "fields": [
        {
          "name": "frequency",
          "short": "Radio frequency for the city",
          "type": "`$STRING`"
        },
        {
          "name": "id",
          "short": "Unique identifier for the city",
          "type": "`$INTEGER`"
        },
        {
          "name": "name",
          "short": "Name of the city",
          "type": "`$STRING`"
        },
        {
          "name": "region",
          "short": "Region or area where the city is located",
          "type": "`$STRING`"
        }
      ],
      "name": "city",
      "op": {
        "list": {
          "input": "data",
          "name": "list",
          "points": [
            {
              "args": {},
              "kind": "http",
              "method": "GET",
              "orig": "/api/cities",
              "parts": [
                "api",
                "cities"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    }
  }
}


const config = new Config()

export {
  config
}

