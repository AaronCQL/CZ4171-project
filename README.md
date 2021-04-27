# CZ4171 Project

## Planning

- Collect real-time user input (15)
- Run model inference on cloud (15 + 10)
- Display inference result in real-time (5)
- Run on physical device (15)
- Communicate with cloud (20)
- Use pre-trained mode (8)
- Support multiple concurrent users (10)

```json
{
  "cropHintsAnnotation": {
    "cropHints": [
      {
        "boundingPoly": {
          "vertices": [
            {
              "y": 40
            },
            {
              "x": 959,
              "y": 40
            },
            {
              "x": 959,
              "y": 1240
            },
            {
              "y": 1240
            }
          ]
        },
        "confidence": 0.24375,
        "importanceFraction": 1
      },
      {
        "boundingPoly": {
          "vertices": [
            {
              "y": 160
            },
            {
              "x": 959,
              "y": 160
            },
            {
              "x": 959,
              "y": 1120
            },
            {
              "y": 1120
            }
          ]
        },
        "confidence": 0.3046875,
        "importanceFraction": 1
      },
      {
        "boundingPoly": {
          "vertices": [
            {
              "y": 128
            },
            {
              "x": 959,
              "y": 128
            },
            {
              "x": 959,
              "y": 927
            },
            {
              "y": 927
            }
          ]
        },
        "confidence": 0.36562508,
        "importanceFraction": 1
      }
    ]
  },
  "imagePropertiesAnnotation": {
    "cropHints": [
      {
        "boundingPoly": {
          "vertices": [
            {
              "y": 40
            },
            {
              "x": 959,
              "y": 40
            },
            {
              "x": 959,
              "y": 1240
            },
            {
              "y": 1240
            }
          ]
        },
        "confidence": 0.24375,
        "importanceFraction": 1
      },
      {
        "boundingPoly": {
          "vertices": [
            {
              "y": 160
            },
            {
              "x": 959,
              "y": 160
            },
            {
              "x": 959,
              "y": 1120
            },
            {
              "y": 1120
            }
          ]
        },
        "confidence": 0.3046875,
        "importanceFraction": 1
      },
      {
        "boundingPoly": {
          "vertices": [
            {
              "y": 128
            },
            {
              "x": 959,
              "y": 128
            },
            {
              "x": 959,
              "y": 927
            },
            {
              "y": 927
            }
          ]
        },
        "confidence": 0.36562508,
        "importanceFraction": 1
      }
    ],
    "dominantColors": {
      "colors": [
        {
          "color": {
            "blue": 53,
            "green": 74,
            "red": 111
          },
          "hex": "6F4A35",
          "percent": 27.060040814214243,
          "percentRounded": 27,
          "pixelFraction": 0.09581121,
          "rgb": "111, 74,\n 53",
          "score": 0.21833229
        },
        {
          "color": {
            "blue": 121,
            "green": 123,
            "red": 98
          },
          "hex": "627B79",
          "percent": 14.834782695668993,
          "percentRounded": 15,
          "pixelFraction": 0.027020648,
          "rgb": "98, 123,\n 121",
          "score": 0.11969354
        },
        {
          "color": {
            "blue": 84,
            "green": 87,
            "red": 71
          },
          "hex": "475754",
          "percent": 14.252290844286664,
          "percentRounded": 14,
          "pixelFraction": 0.03581121,
          "rgb": "71, 87,\n 84",
          "score": 0.11499374
        },
        {
          "color": {
            "blue": 205,
            "green": 199,
            "red": 165
          },
          "hex": "A5C7CD",
          "percent": 5.997064574714733,
          "percentRounded": 6,
          "pixelFraction": 0.04696165,
          "rgb": "165, 199,\n 205",
          "score": 0.04838695
        },
        {
          "color": {
            "blue": 88,
            "green": 93,
            "red": 70
          },
          "hex": "465D58",
          "percent": 11.127691421304098,
          "percentRounded": 11,
          "pixelFraction": 0.015044248,
          "rgb": "70, 93,\n 88",
          "score": 0.0897831
        },
        {
          "color": {
            "blue": 30,
            "green": 44,
            "red": 79
          },
          "hex": "4F2C1E",
          "percent": 7.4666518054691124,
          "percentRounded": 7,
          "pixelFraction": 0.044247787,
          "rgb": "79, 44,\n 30",
          "score": 0.060244225
        },
        {
          "color": {
            "blue": 119,
            "green": 121,
            "red": 103
          },
          "hex": "677977",
          "percent": 7.153395426591218,
          "percentRounded": 7,
          "pixelFraction": 0.021120943,
          "rgb": "103, 121,\n 119",
          "score": 0.057716735
        },
        {
          "color": {
            "blue": 153,
            "green": 154,
            "red": 140
          },
          "hex": "8C9A99",
          "percent": 5.419966827412545,
          "percentRounded": 5,
          "pixelFraction": 0.03634218,
          "rgb": "140, 154,\n 153",
          "score": 0.043730672
        },
        {
          "color": {
            "blue": 54,
            "green": 60,
            "red": 50
          },
          "hex": "323C36",
          "percent": 3.5478686549661664,
          "percentRounded": 4,
          "pixelFraction": 0.015693216,
          "rgb": "50, 60,\n 54",
          "score": 0.028625762
        },
        {
          "color": {
            "blue": 47,
            "green": 57,
            "red": 37
          },
          "hex": "25392F",
          "percent": 3.1402469353722138,
          "percentRounded": 3,
          "pixelFraction": 0.003952802,
          "rgb": "37, 57,\n 47",
          "score": 0.025336891
        }
      ]
    }
  },
  "labelAnnotations": [
    {
      "description": "Drinkware",
      "mid": "/m/050h26",
      "score": 0.9526085,
      "topicality": 0.9526085
    },
    {
      "description": "Liquid",
      "mid": "/m/04k94",
      "score": 0.9483707,
      "topicality": 0.9483707
    },
    {
      "description": "Bottle",
      "mid": "/m/04dr76w",
      "score": 0.9453772,
      "topicality": 0.9453772
    },
    {
      "description": "Table",
      "mid": "/m/04bcr3",
      "score": 0.9118874,
      "topicality": 0.9118874
    },
    {
      "description": "Glass bottle",
      "mid": "/m/089mxq",
      "score": 0.88944954,
      "topicality": 0.88944954
    },
    {
      "description": "Tableware",
      "mid": "/m/04brg2",
      "score": 0.8871699,
      "topicality": 0.8871699
    },
    {
      "description": "Fluid",
      "mid": "/m/02yfx",
      "score": 0.87044823,
      "topicality": 0.87044823
    },
    {
      "description": "Water bottle",
      "mid": "/m/0118n_9r",
      "score": 0.8700598,
      "topicality": 0.8700598
    },
    {
      "description": "Drink",
      "mid": "/m/0271t",
      "score": 0.85616046,
      "topicality": 0.85616046
    },
    {
      "description": "Plastic bottle",
      "mid": "/m/02rlncx",
      "score": 0.84546715,
      "topicality": 0.84546715
    },
    {
      "description": "Wood",
      "mid": "/m/083vt",
      "score": 0.84378374,
      "topicality": 0.84378374
    },
    {
      "description": "Luggage and bags",
      "mid": "/m/0hf58v5",
      "score": 0.826336,
      "topicality": 0.826336
    },
    {
      "description": "Solution",
      "mid": "/m/073l3",
      "score": 0.81924796,
      "topicality": 0.81924796
    },
    {
      "description": "Floor",
      "mid": "/m/0l7_8",
      "score": 0.8173416,
      "topicality": 0.8173416
    },
    {
      "description": "Backpack",
      "mid": "/m/01940j",
      "score": 0.8107434,
      "topicality": 0.8107434
    },
    {
      "description": "Flooring",
      "mid": "/m/01c34b",
      "score": 0.80795056,
      "topicality": 0.80795056
    },
    {
      "description": "Drinking water",
      "mid": "/m/01c6xf",
      "score": 0.8046727,
      "topicality": 0.8046727
    },
    {
      "description": "Gas",
      "mid": "/m/037xy",
      "score": 0.7802677,
      "topicality": 0.7802677
    },
    {
      "description": "Serveware",
      "mid": "/m/0h8n22v",
      "score": 0.77223784,
      "topicality": 0.77223784
    },
    {
      "description": "Hardwood",
      "mid": "/m/020g49",
      "score": 0.7602177,
      "topicality": 0.7602177
    },
    {
      "description": "Personal care",
      "mid": "/m/02w3_ws",
      "score": 0.7565855,
      "topicality": 0.7565855
    },
    {
      "description": "Water",
      "mid": "/m/0838f",
      "score": 0.75489426,
      "topicality": 0.75489426
    },
    {
      "description": "Cylinder",
      "mid": "/m/03h_4m",
      "score": 0.74752784,
      "topicality": 0.74752784
    },
    {
      "description": "Glass",
      "mid": "/m/039jq",
      "score": 0.7325877,
      "topicality": 0.7325877
    },
    {
      "description": "Solvent",
      "mid": "/m/09bkb",
      "score": 0.728033,
      "topicality": 0.728033
    },
    {
      "description": "Bag",
      "mid": "/m/0n5v01m",
      "score": 0.71633494,
      "topicality": 0.71633494
    },
    {
      "description": "Transparent material",
      "mid": "/m/01z8xg",
      "score": 0.69868267,
      "topicality": 0.69868267
    },
    {
      "description": "Wood stain",
      "mid": "/m/05t06b",
      "score": 0.6905088,
      "topicality": 0.6905088
    },
    {
      "description": "Plastic",
      "mid": "/m/05z87",
      "score": 0.6896317,
      "topicality": 0.6896317
    },
    {
      "description": "Rectangle",
      "mid": "/m/0j62f",
      "score": 0.6841644,
      "topicality": 0.6841644
    },
    {
      "description": "Varnish",
      "mid": "/m/01ffcg",
      "score": 0.651229,
      "topicality": 0.651229
    },
    {
      "description": "Room",
      "mid": "/m/06ht1",
      "score": 0.6500406,
      "topicality": 0.6500406
    },
    {
      "description": "Baggage",
      "mid": "/m/03w7y7",
      "score": 0.6444825,
      "topicality": 0.6444825
    },
    {
      "description": "Household supply",
      "mid": "/m/0h8nt1x",
      "score": 0.6367459,
      "topicality": 0.6367459
    },
    {
      "description": "Distilled water",
      "mid": "/m/0qlx1",
      "score": 0.6327726,
      "topicality": 0.6327726
    },
    {
      "description": "Laminate flooring",
      "mid": "/m/04xvs0",
      "score": 0.62135553,
      "topicality": 0.62135553
    },
    {
      "description": "Wood flooring",
      "mid": "/m/027xhm0",
      "score": 0.60148925,
      "topicality": 0.60148925
    },
    {
      "description": "Plywood",
      "mid": "/m/0jh8w",
      "score": 0.58466345,
      "topicality": 0.58466345
    },
    {
      "description": "Liqueur",
      "mid": "/m/04qgp",
      "score": 0.5767474,
      "topicality": 0.5767474
    },
    {
      "description": "Home accessories",
      "mid": "/m/0dlly9m",
      "score": 0.5661175,
      "topicality": 0.5661175
    },
    {
      "description": "Still life photography",
      "mid": "/m/027_ny3",
      "score": 0.53943074,
      "topicality": 0.53943074
    },
    {
      "description": "Soap dispenser",
      "mid": "/m/0c3mkw",
      "score": 0.53934723,
      "topicality": 0.53934723
    },
    {
      "description": "Desk",
      "mid": "/m/01y9k5",
      "score": 0.528473,
      "topicality": 0.528473
    },
    {
      "description": "Vacuum flask",
      "mid": "/m/0125ct",
      "score": 0.5258769,
      "topicality": 0.5258769
    },
    {
      "description": "Lid",
      "mid": "/m/074cq5",
      "score": 0.52027893,
      "topicality": 0.52027893
    },
    {
      "description": "Bottled water",
      "mid": "/m/024247",
      "score": 0.50428444,
      "topicality": 0.50428444
    }
  ],
  "localizedObjectAnnotations": [
    {
      "boundingPoly": {
        "normalizedVertices": [
          {
            "x": 0.43253207,
            "y": 0.22568005
          },
          {
            "x": 0.61724156,
            "y": 0.22568005
          },
          {
            "x": 0.61724156,
            "y": 0.68492746
          },
          {
            "x": 0.43253207,
            "y": 0.68492746
          }
        ]
      },
      "mid": "/j/5qg9b8",
      "name": "Packaged goods",
      "score": 0.84704155
    },
    {
      "boundingPoly": {
        "normalizedVertices": [
          {
            "x": 0.8104904,
            "y": 0.31089872
          },
          {
            "x": 0.99526715,
            "y": 0.31089872
          },
          {
            "x": 0.99526715,
            "y": 0.60757345
          },
          {
            "x": 0.8104904,
            "y": 0.60757345
          }
        ]
      },
      "mid": "/m/0hf58v5",
      "name": "Luggage & bags",
      "score": 0.7264433
    },
    {
      "boundingPoly": {
        "normalizedVertices": [
          {
            "x": 0.44285032,
            "y": 0.2319618
          },
          {
            "x": 0.61995894,
            "y": 0.2319618
          },
          {
            "x": 0.61995894,
            "y": 0.68831754
          },
          {
            "x": 0.44285032,
            "y": 0.68831754
          }
        ]
      },
      "mid": "/m/04dr76w",
      "name": "Bottle",
      "score": 0.64805096
    }
  ],
  "safeSearchAnnotation": {
    "adult": "VERY_UNLIKELY",
    "medical": "UNLIKELY",
    "racy": "UNLIKELY",
    "spoof": "VERY_UNLIKELY",
    "violence": "VERY_UNLIKELY"
  }
}
```

## Notes

```sh
# for admin sdk to work:
export GOOGLE_APPLICATION_CREDENTIALS="path/to/key.json"
```

