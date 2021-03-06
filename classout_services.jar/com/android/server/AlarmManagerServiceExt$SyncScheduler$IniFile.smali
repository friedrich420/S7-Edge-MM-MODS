.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IniFile"
.end annotation


# instance fields
.field private _keyValue:Ljava/util/regex/Pattern;

.field private _section:Ljava/util/regex/Pattern;

.field private sections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Ljava/lang/String;)V
    .registers 4
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1263
    iput-object p1, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1258
    const-string v0, "\\s*\\[([^]]*)\\]\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, _section:Ljava/util/regex/Pattern;

    .line 1259
    const-string v0, "\\s*([^=]*)=(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, _keyValue:Ljava/util/regex/Pattern;

    .line 1261
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, sections:Ljava/util/Map;

    .line 1264
    invoke-virtual {p0, p2}, load(Ljava/lang/String;)V

    .line 1265
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultvalue"    # Z

    .prologue
    .line 1348
    iget-object v3, p0, sections:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1349
    .local v2, "kv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move v0, p3

    .line 1350
    .local v0, "booleanVal":Z
    if-nez v2, :cond_d

    move v1, v0

    .line 1356
    .end local v0    # "booleanVal":Z
    .local v1, "booleanVal":Z
    :goto_c
    return v1

    .line 1353
    .end local v1    # "booleanVal":Z
    .restart local v0    # "booleanVal":Z
    :cond_d
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 1354
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_25
    move v1, v0

    .line 1356
    .end local v0    # "booleanVal":Z
    .restart local v1    # "booleanVal":Z
    goto :goto_c
.end method

.method public getInt(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 8
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultvalue"    # I

    .prologue
    .line 1313
    iget-object v3, p0, sections:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1314
    .local v0, "kv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move v1, p3

    .line 1315
    .local v1, "retVal":I
    if-nez v0, :cond_d

    move v2, v1

    .line 1325
    .end local v1    # "retVal":I
    .local v2, "retVal":I
    :goto_c
    return v2

    .line 1319
    .end local v2    # "retVal":I
    .restart local v1    # "retVal":I
    :cond_d
    :try_start_d
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 1320
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_20} :catch_25

    move-result v1

    .line 1321
    mul-int/lit16 v1, v1, 0x3e8

    :cond_23
    :goto_23
    move v2, v1

    .line 1325
    .end local v1    # "retVal":I
    .restart local v2    # "retVal":I
    goto :goto_c

    .line 1323
    .end local v2    # "retVal":I
    .restart local v1    # "retVal":I
    :catch_25
    move-exception v3

    goto :goto_23
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/String;J)J
    .registers 12
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultvalue"    # J

    .prologue
    .line 1329
    iget-object v6, p0, sections:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1330
    .local v0, "kv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-wide v2, p3

    .line 1331
    .local v2, "retVal":J
    if-nez v0, :cond_d

    move-wide v4, v2

    .line 1344
    .end local v2    # "retVal":J
    .local v4, "retVal":J
    :goto_c
    return-wide v4

    .line 1335
    .end local v4    # "retVal":J
    .restart local v2    # "retVal":J
    :cond_d
    :try_start_d
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1336
    .local v1, "strKey":Ljava/lang/String;
    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2f

    .line 1337
    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    if-eqz v6, :cond_2f

    .line 1338
    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_2e} :catch_31

    move-result-wide v2

    .end local v1    # "strKey":Ljava/lang/String;
    :cond_2f
    :goto_2f
    move-wide v4, v2

    .line 1344
    .end local v2    # "retVal":J
    .restart local v4    # "retVal":J
    goto :goto_c

    .line 1342
    .end local v4    # "retVal":J
    .restart local v2    # "retVal":J
    :catch_31
    move-exception v6

    goto :goto_2f
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultvalue"    # Ljava/lang/String;

    .prologue
    .line 1305
    iget-object v1, p0, sections:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1306
    .local v0, "kv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_b

    .line 1309
    .end local p3    # "defaultvalue":Ljava/lang/String;
    :goto_a
    return-object p3

    .restart local p3    # "defaultvalue":Ljava/lang/String;
    :cond_b
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object p3, v1

    goto :goto_a
.end method

.method public load(Ljava/lang/String;)V
    .registers 12
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1269
    const/4 v0, 0x0

    .line 1272
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 1274
    .local v6, "section":Ljava/lang/String;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_98
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_7e
    .catchall {:try_start_2 .. :try_end_c} :catchall_87

    .line 1275
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_c
    :goto_c
    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_74

    .line 1276
    iget-object v8, p0, _section:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 1277
    .local v5, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_28

    .line 1278
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_c

    .line 1279
    :cond_28
    if-eqz v6, :cond_c

    .line 1280
    iget-object v8, p0, _keyValue:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 1281
    const-string v8, "APPSYNC_INIT"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1282
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1283
    .local v2, "key":Ljava/lang/String;
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1284
    .local v7, "value":Ljava/lang/String;
    iget-object v8, p0, sections:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 1285
    .local v3, "kv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v3, :cond_64

    .line 1286
    iget-object v8, p0, sections:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "kv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .restart local v3    # "kv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    :cond_64
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_6b} :catch_6c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_6b} :catch_95
    .catchall {:try_start_c .. :try_end_6b} :catchall_92

    goto :goto_c

    .line 1292
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "kv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "m":Ljava/util/regex/Matcher;
    .end local v7    # "value":Ljava/lang/String;
    :catch_6c
    move-exception v8

    move-object v0, v1

    .line 1296
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_6e
    if-eqz v0, :cond_73

    .line 1298
    :try_start_70
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_8e

    .line 1303
    :cond_73
    :goto_73
    return-void

    .line 1296
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_74
    if-eqz v1, :cond_9a

    .line 1298
    :try_start_76
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7b

    move-object v0, v1

    .line 1300
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_73

    .line 1299
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_7b
    move-exception v8

    move-object v0, v1

    .line 1300
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_73

    .line 1293
    .end local v4    # "line":Ljava/lang/String;
    :catch_7e
    move-exception v8

    .line 1296
    :goto_7f
    if-eqz v0, :cond_73

    .line 1298
    :try_start_81
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_73

    .line 1299
    :catch_85
    move-exception v8

    goto :goto_73

    .line 1296
    :catchall_87
    move-exception v8

    :goto_88
    if-eqz v0, :cond_8d

    .line 1298
    :try_start_8a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_90

    .line 1300
    :cond_8d
    :goto_8d
    throw v8

    .line 1299
    :catch_8e
    move-exception v8

    goto :goto_73

    :catch_90
    move-exception v9

    goto :goto_8d

    .line 1296
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_92
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_88

    .line 1293
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_95
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_7f

    .line 1292
    :catch_98
    move-exception v8

    goto :goto_6e

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_9a
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_73
.end method
