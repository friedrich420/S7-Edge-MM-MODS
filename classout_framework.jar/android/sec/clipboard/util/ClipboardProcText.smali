.class public Landroid/sec/clipboard/util/ClipboardProcText;
.super Ljava/lang/Object;
.source "ClipboardProcText.java"


# static fields
.field private static final IMG_BEGIN:Ljava/lang/String; = "<img"

.field private static final IMG_SRC:Ljava/lang/String; = "src=\""

.field private static final TAG:Ljava/lang/String; = "ClipboardProcText"

.field private static body_found:Z

.field private static href:Ljava/lang/String;

.field private static in_body:Z

.field private static pre:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 33
    sput-boolean v0, body_found:Z

    .line 34
    sput-boolean v0, in_body:Z

    .line 35
    sput-boolean v0, pre:Z

    .line 36
    const-string v0, ""

    sput-object v0, href:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertString(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 95
    .local v4, "result":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .local v5, "result2":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 99
    .local v3, "input":Ljava/io/StringReader;
    const/4 v8, 0x0

    .line 100
    .local v8, "text":Ljava/lang/String;
    :try_start_10
    invoke-virtual {v3}, Ljava/io/StringReader;->read()I

    move-result v1

    .line 102
    .local v1, "dChar":I
    :goto_14
    const/4 v9, -0x1

    if-eq v1, v9, :cond_133

    .line 104
    const-string v8, ""

    .line 105
    const/16 v9, 0x3c

    if-ne v1, v9, :cond_32

    .line 107
    invoke-static {v3}, getTag(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "CurrentTag":Ljava/lang/String;
    invoke-static {v0}, convertTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 142
    .end local v0    # "CurrentTag":Ljava/lang/String;
    :goto_25
    sget-boolean v9, in_body:Z

    if-eqz v9, :cond_12b

    move-object v6, v4

    .line 143
    .local v6, "s":Ljava/lang/StringBuffer;
    :goto_2a
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    invoke-virtual {v3}, Ljava/io/StringReader;->read()I

    move-result v1

    .line 145
    goto :goto_14

    .line 110
    .end local v6    # "s":Ljava/lang/StringBuffer;
    :cond_32
    const/16 v9, 0x26

    if-ne v1, v9, :cond_e5

    .line 111
    invoke-static {v3}, getSpecial(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v7

    .line 112
    .local v7, "specialchar":Ljava/lang/String;
    const-string v9, "lt;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4a

    const-string v9, "#60"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 113
    :cond_4a
    const-string v8, "<"

    goto :goto_25

    .line 114
    :cond_4d
    const-string v9, "gt;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5d

    const-string v9, "#62"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_60

    .line 115
    :cond_5d
    const-string v8, ">"

    goto :goto_25

    .line 116
    :cond_60
    const-string v9, "amp;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_70

    const-string v9, "#38"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_73

    .line 117
    :cond_70
    const-string v8, "&"

    goto :goto_25

    .line 118
    :cond_73
    const-string/jumbo v9, "nbsp;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7f

    .line 119
    const-string v8, " "

    goto :goto_25

    .line 120
    :cond_7f
    const-string/jumbo v9, "quot;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_90

    const-string v9, "#34"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_93

    .line 121
    :cond_90
    const-string v8, "\""

    goto :goto_25

    .line 122
    :cond_93
    const-string v9, "copy;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a3

    const-string v9, "#169"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a6

    .line 123
    :cond_a3
    const-string v8, "[Copyright]"

    goto :goto_25

    .line 124
    :cond_a6
    const-string/jumbo v9, "reg;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b7

    const-string v9, "#174"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_bb

    .line 125
    :cond_b7
    const-string v8, "[Registered]"

    goto/16 :goto_25

    .line 126
    :cond_bb
    const-string/jumbo v9, "trade;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_cc

    const-string v9, "#153"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d0

    .line 127
    :cond_cc
    const-string v8, "[Trademark]"

    goto/16 :goto_25

    .line 129
    :cond_d0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_25

    .line 131
    .end local v7    # "specialchar":Ljava/lang/String;
    :cond_e5
    sget-boolean v9, pre:Z

    if-nez v9, :cond_115

    int-to-char v9, v1

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_115

    .line 132
    sget-boolean v9, in_body:Z

    if-eqz v9, :cond_10f

    move-object v6, v4

    .line 133
    .restart local v6    # "s":Ljava/lang/StringBuffer;
    :goto_f5
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-lez v9, :cond_111

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_111

    .line 134
    const-string v8, ""

    goto/16 :goto_25

    .end local v6    # "s":Ljava/lang/StringBuffer;
    :cond_10f
    move-object v6, v5

    .line 132
    goto :goto_f5

    .line 136
    .restart local v6    # "s":Ljava/lang/StringBuffer;
    :cond_111
    const-string v8, " "

    goto/16 :goto_25

    .line 139
    .end local v6    # "s":Ljava/lang/StringBuffer;
    :cond_115
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-char v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_128} :catch_12e

    move-result-object v8

    goto/16 :goto_25

    :cond_12b
    move-object v6, v5

    .line 142
    goto/16 :goto_2a

    .line 146
    .end local v1    # "dChar":I
    :catch_12e
    move-exception v2

    .line 147
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V

    .line 148
    throw v2

    .line 150
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "dChar":I
    :cond_133
    sget-boolean v9, body_found:Z

    if-eqz v9, :cond_141

    move-object v6, v4

    .line 151
    .restart local v6    # "s":Ljava/lang/StringBuffer;
    :goto_138
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .end local v6    # "s":Ljava/lang/StringBuffer;
    :cond_141
    move-object v6, v5

    .line 150
    goto :goto_138
.end method

.method private static convertTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "sText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 224
    const-string v2, ""

    .line 225
    .local v2, "result":Ljava/lang/String;
    const-string v3, "body"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 226
    sput-boolean v4, in_body:Z

    .line 227
    sput-boolean v4, body_found:Z

    .line 312
    :cond_11
    :goto_11
    return-object v2

    .line 228
    :cond_12
    const-string v3, "/body"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 229
    sput-boolean v6, in_body:Z

    .line 230
    const-string v2, ""

    goto :goto_11

    .line 231
    :cond_1f
    const-string v3, "center"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 232
    const-string v2, ""

    goto :goto_11

    .line 234
    :cond_2a
    const-string v3, "/center"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 235
    const-string v2, ""

    goto :goto_11

    .line 237
    :cond_35
    const-string/jumbo v3, "pre"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 238
    const-string v2, ""

    .line 239
    sput-boolean v4, pre:Z

    goto :goto_11

    .line 240
    :cond_43
    const-string v3, "/pre"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 241
    const-string v2, ""

    .line 242
    sput-boolean v6, pre:Z

    goto :goto_11

    .line 243
    :cond_50
    const-string/jumbo v3, "p"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 244
    const-string v2, "\n"

    goto :goto_11

    .line 245
    :cond_5c
    const-string v3, "br"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 246
    const-string v2, "\n"

    goto :goto_11

    .line 247
    :cond_67
    const-string v3, "h1"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9f

    const-string v3, "h2"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9f

    const-string v3, "h3"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9f

    const-string v3, "h4"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9f

    const-string v3, "h5"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9f

    const-string v3, "h6"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9f

    const-string v3, "h7"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 250
    :cond_9f
    const-string v2, ""

    goto/16 :goto_11

    .line 251
    :cond_a3
    const-string v3, "/h1"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_db

    const-string v3, "/h2"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_db

    const-string v3, "/h3"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_db

    const-string v3, "/h4"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_db

    const-string v3, "/h5"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_db

    const-string v3, "/h6"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_db

    const-string v3, "/h7"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_df

    .line 255
    :cond_db
    const-string v2, ""

    goto/16 :goto_11

    .line 256
    :cond_df
    const-string v3, "/dl"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_eb

    .line 257
    const-string v2, ""

    goto/16 :goto_11

    .line 258
    :cond_eb
    const-string v3, "dd"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f7

    .line 259
    const-string v2, ""

    goto/16 :goto_11

    .line 260
    :cond_f7
    const-string v3, "dt"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_103

    .line 261
    const-string v2, "      "

    goto/16 :goto_11

    .line 262
    :cond_103
    const-string v3, "li"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10f

    .line 263
    const-string v2, "\n   "

    goto/16 :goto_11

    .line 264
    :cond_10f
    const-string v3, "/ul"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11b

    .line 265
    const-string v2, ""

    goto/16 :goto_11

    .line 266
    :cond_11b
    const-string v3, "/ol"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_127

    .line 267
    const-string v2, ""

    goto/16 :goto_11

    .line 268
    :cond_127
    const-string v3, "hr"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_133

    .line 269
    const-string v2, "_________________________________________"

    goto/16 :goto_11

    .line 270
    :cond_133
    const-string/jumbo v3, "table"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_140

    .line 271
    const-string v2, ""

    goto/16 :goto_11

    .line 272
    :cond_140
    const-string v3, "/table"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14c

    .line 273
    const-string v2, ""

    goto/16 :goto_11

    .line 274
    :cond_14c
    const-string v3, "form"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_158

    .line 275
    const-string v2, ""

    goto/16 :goto_11

    .line 276
    :cond_158
    const-string v3, "/form"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_164

    .line 277
    const-string v2, ""

    goto/16 :goto_11

    .line 278
    :cond_164
    const-string v3, "b"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_170

    .line 279
    const-string v2, ""

    goto/16 :goto_11

    .line 280
    :cond_170
    const-string v3, "/b"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17c

    .line 281
    const-string v2, ""

    goto/16 :goto_11

    .line 282
    :cond_17c
    const-string v3, "i"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_188

    .line 283
    const-string v2, ""

    goto/16 :goto_11

    .line 284
    :cond_188
    const-string v3, "/i"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_194

    .line 285
    const-string v2, ""

    goto/16 :goto_11

    .line 286
    :cond_194
    const-string v3, "img"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b2

    .line 287
    const-string v3, "alt=\""

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 288
    .local v0, "idx":I
    if-eq v0, v5, :cond_11

    .line 289
    add-int/lit8 v0, v0, 0x5

    .line 290
    const-string v3, "\""

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 291
    .local v1, "idx2":I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_11

    .line 293
    .end local v0    # "idx":I
    .end local v1    # "idx2":I
    :cond_1b2
    const-string v3, "a"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d8

    .line 294
    const-string v3, "href=\""

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 295
    .restart local v0    # "idx":I
    if-eq v0, v5, :cond_1d2

    .line 296
    add-int/lit8 v0, v0, 0x6

    .line 297
    const-string v3, "\""

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 298
    .restart local v1    # "idx2":I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sput-object v3, href:Ljava/lang/String;

    goto/16 :goto_11

    .line 300
    .end local v1    # "idx2":I
    :cond_1d2
    const-string v3, ""

    sput-object v3, href:Ljava/lang/String;

    goto/16 :goto_11

    .line 303
    .end local v0    # "idx":I
    :cond_1d8
    const-string v3, "/a"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1ec

    .line 304
    sget-object v3, href:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_11

    .line 305
    const-string v2, "\n"

    goto/16 :goto_11

    .line 309
    :cond_1ec
    const-string v3, "/tr"

    invoke-static {p0, v3}, isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 310
    const-string v2, "\n"

    goto/16 :goto_11
.end method

.method public static getImgFileNameFormHtml(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "sSource"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 47
    move-object v5, p0

    .line 48
    .local v5, "sSourceOriginal":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "sSourceLower":Ljava/lang/String;
    const-string v3, ""

    .line 51
    .local v3, "sResult":Ljava/lang/String;
    const/4 v1, 0x0

    .line 52
    .local v1, "iIndex":I
    const/4 v2, 0x0

    .line 53
    .local v2, "iSubIndex":I
    const-string v6, "<img"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 54
    if-eq v1, v7, :cond_56

    .line 55
    :goto_12
    if-le v1, v7, :cond_4e

    .line 56
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 57
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 59
    const-string/jumbo v6, "src=\""

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 60
    if-lez v2, :cond_4e

    .line 61
    const-string/jumbo v6, "src=\""

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    .line 63
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 64
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 66
    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 67
    .local v0, "i1":I
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 71
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4f

    .line 83
    .end local v0    # "i1":I
    :cond_4e
    :goto_4e
    return-object v3

    .line 76
    .restart local v0    # "i1":I
    :cond_4f
    const-string v6, "<img"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_12

    .line 79
    .end local v0    # "i1":I
    :cond_56
    const-string v6, "<iframe"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_4e

    .line 80
    const-string v6, "ClipboardProcText"

    const-string v7, "This is using a iframe tag."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e
.end method

.method private static getSpecial(Ljava/io/Reader;)Ljava/lang/String;
    .registers 6
    .param p0, "rReader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x3b

    const/4 v3, 0x1

    .line 185
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 186
    .local v1, "result":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v3}, Ljava/io/Reader;->mark(I)V

    .line 187
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 189
    .local v0, "dCharacter":I
    :goto_f
    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 190
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 191
    invoke-virtual {p0, v3}, Ljava/io/Reader;->mark(I)V

    .line 192
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    goto :goto_f

    .line 194
    :cond_22
    if-ne v0, v4, :cond_2c

    .line 195
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 198
    :goto_27
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 197
    :cond_2c
    invoke-virtual {p0}, Ljava/io/Reader;->reset()V

    goto :goto_27
.end method

.method private static getTag(Ljava/io/Reader;)Ljava/lang/String;
    .registers 6
    .param p0, "r"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x3c

    .line 161
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 162
    .local v2, "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .line 164
    .local v1, "level":I
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 165
    :cond_b
    :goto_b
    if-lez v1, :cond_14

    .line 166
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 167
    .local v0, "dChar":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_19

    .line 176
    .end local v0    # "dChar":I
    :cond_14
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 169
    .restart local v0    # "dChar":I
    :cond_19
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 170
    if-ne v0, v4, :cond_22

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 172
    :cond_22
    const/16 v3, 0x3e

    if-ne v0, v3, :cond_b

    .line 173
    add-int/lit8 v1, v1, -0x1

    goto :goto_b
.end method

.method private static isTag(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "sSentence"    # Ljava/lang/String;
    .param p1, "sTag"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "sTagType_1":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "sTagType_2":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    :cond_4a
    const/4 v2, 0x1

    :goto_4b
    return v2

    :cond_4c
    const/4 v2, 0x0

    goto :goto_4b
.end method
