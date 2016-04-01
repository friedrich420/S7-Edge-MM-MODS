.class Lcom/android/server/DcmNextiPlayReadyService$MainThread;
.super Ljava/lang/Thread;
.source "DcmNextiPlayReadyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DcmNextiPlayReadyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DcmNextiPlayReadyService;

.field private urlToRead:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/DcmNextiPlayReadyService;Ljava/lang/String;)V
    .registers 3
    .param p2, "urlToRead"    # Ljava/lang/String;

    .prologue
    .line 292
    iput-object p1, p0, this$0:Lcom/android/server/DcmNextiPlayReadyService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 293
    iput-object p2, p0, urlToRead:Ljava/lang/String;

    .line 294
    return-void
.end method


# virtual methods
.method public run()V
    .registers 31

    .prologue
    .line 297
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    .line 299
    const/16 v24, 0x0

    .line 301
    .local v24, "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    :try_start_5
    new-instance v23, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, urlToRead:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 304
    .local v23, "url":Ljava/net/URL;
    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v26

    move-object/from16 v0, v26

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v24, v0

    .line 306
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v22

    .line 307
    .local v22, "trustStore":Ljava/security/KeyStore;
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 308
    new-instance v19, Lcom/android/server/DcmNextiPlayReadyService$SFSSLSocketFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/DcmNextiPlayReadyService;

    move-object/from16 v26, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/DcmNextiPlayReadyService$SFSSLSocketFactory;-><init>(Lcom/android/server/DcmNextiPlayReadyService;Ljava/security/KeyStore;)V

    .line 309
    .local v19, "sf":Ljavax/net/ssl/SSLSocketFactory;
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 311
    invoke-virtual/range {v24 .. v24}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v13

    .line 312
    .local v13, "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_57
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_156

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 314
    .local v12, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v26, "Date"

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_57

    .line 316
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .local v18, "s":Ljava/lang/StringBuilder;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 318
    .local v10, "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_d4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 319
    .local v25, "value":Ljava/lang/String;
    const-string v26, "DcmNextiPlayReadyService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, " Date List value "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_ad
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_ad} :catch_ae
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_ad} :catch_174
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_ad} :catch_1c0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_ad} :catch_1e7
    .catchall {:try_start_5 .. :try_end_ad} :catchall_20e

    goto :goto_7e

    .line 349
    .end local v10    # "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v13    # "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v18    # "s":Ljava/lang/StringBuilder;
    .end local v19    # "sf":Ljavax/net/ssl/SSLSocketFactory;
    .end local v22    # "trustStore":Ljava/security/KeyStore;
    .end local v23    # "url":Ljava/net/URL;
    .end local v25    # "value":Ljava/lang/String;
    :catch_ae
    move-exception v5

    .line 350
    .local v5, "e":Ljava/lang/SecurityException;
    :try_start_af
    const-string v26, "DcmNextiPlayReadyService"

    const-string v27, "Catch SecurityException Exceptions"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v26, "DcmNextiPlayReadyService"

    invoke-virtual {v5}, Ljava/lang/SecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {v5}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_c2
    .catchall {:try_start_af .. :try_end_c2} :catchall_20e

    .line 366
    const-string v26, "DcmNextiPlayReadyService"

    const-string/jumbo v27, "resetting flag for later threads"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/16 v26, 0x1

    sput v26, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    .line 369
    if-eqz v24, :cond_d3

    .line 371
    invoke-virtual/range {v24 .. v24}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 374
    .end local v5    # "e":Ljava/lang/SecurityException;
    :cond_d3
    :goto_d3
    return-void

    .line 323
    .restart local v10    # "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v12    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v13    # "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v18    # "s":Ljava/lang/StringBuilder;
    .restart local v19    # "sf":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v22    # "trustStore":Ljava/security/KeyStore;
    .restart local v23    # "url":Ljava/net/URL;
    :cond_d4
    :try_start_d4
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 325
    .local v6, "epochTime":Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v26, "E, dd MMM yyyy HH:mm:ss ZZZ"

    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_e2
    .catch Ljava/lang/SecurityException; {:try_start_d4 .. :try_end_e2} :catch_ae
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d4 .. :try_end_e2} :catch_174
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_e2} :catch_1c0
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_e2} :catch_1e7
    .catchall {:try_start_d4 .. :try_end_e2} :catchall_20e

    .line 327
    .local v4, "dateFormat":Ljava/text/DateFormat;
    :try_start_e2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_eb
    .catch Ljava/text/ParseException; {:try_start_e2 .. :try_end_eb} :catch_169
    .catch Ljava/lang/SecurityException; {:try_start_e2 .. :try_end_eb} :catch_ae
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e2 .. :try_end_eb} :catch_174
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_eb} :catch_1c0
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_eb} :catch_1e7
    .catchall {:try_start_e2 .. :try_end_eb} :catchall_20e

    move-result-object v6

    .line 333
    :goto_ec
    const-wide/16 v8, 0x0

    .line 334
    .local v8, "epoch_time_long":J
    :try_start_ee
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 335
    const-string v26, "DcmNextiPlayReadyService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "epoch time: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-wide/16 v26, 0x0

    cmp-long v26, v8, v26

    if-eqz v26, :cond_19b

    .line 337
    const-wide/16 v26, 0x3e8

    div-long v14, v8, v26

    .line 338
    .local v14, "networktime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    const-wide/16 v28, 0x3e8

    div-long v16, v26, v28

    .line 339
    .local v16, "recvElapsedTime":J
    const-string v26, "DcmNextiPlayReadyService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "networktime "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "recvElapsedTime"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/DcmNextiPlayReadyService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1, v2}, Lcom/android/server/DcmNextiPlayReadyService;->onNetworkStateChanged(JJ)V
    :try_end_156
    .catch Ljava/lang/SecurityException; {:try_start_ee .. :try_end_156} :catch_ae
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ee .. :try_end_156} :catch_174
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_156} :catch_1c0
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_156} :catch_1e7
    .catchall {:try_start_ee .. :try_end_156} :catchall_20e

    .line 366
    .end local v4    # "dateFormat":Ljava/text/DateFormat;
    .end local v6    # "epochTime":Ljava/util/Date;
    .end local v8    # "epoch_time_long":J
    .end local v10    # "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v14    # "networktime":J
    .end local v16    # "recvElapsedTime":J
    .end local v18    # "s":Ljava/lang/StringBuilder;
    :cond_156
    :goto_156
    const-string v26, "DcmNextiPlayReadyService"

    const-string/jumbo v27, "resetting flag for later threads"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/16 v26, 0x1

    sput v26, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    .line 369
    if-eqz v24, :cond_d3

    .line 371
    invoke-virtual/range {v24 .. v24}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_d3

    .line 329
    .restart local v4    # "dateFormat":Ljava/text/DateFormat;
    .restart local v6    # "epochTime":Ljava/util/Date;
    .restart local v10    # "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v18    # "s":Ljava/lang/StringBuilder;
    :catch_169
    move-exception v7

    .line 331
    .local v7, "ex":Ljava/text/ParseException;
    :try_start_16a
    const-string v26, "DcmNextiPlayReadyService"

    const-string/jumbo v27, "epoch time parsing error"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_172
    .catch Ljava/lang/SecurityException; {:try_start_16a .. :try_end_172} :catch_ae
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16a .. :try_end_172} :catch_174
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_172} :catch_1c0
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_172} :catch_1e7
    .catchall {:try_start_16a .. :try_end_172} :catchall_20e

    goto/16 :goto_ec

    .line 353
    .end local v4    # "dateFormat":Ljava/text/DateFormat;
    .end local v6    # "epochTime":Ljava/util/Date;
    .end local v7    # "ex":Ljava/text/ParseException;
    .end local v10    # "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v13    # "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v18    # "s":Ljava/lang/StringBuilder;
    .end local v19    # "sf":Ljavax/net/ssl/SSLSocketFactory;
    .end local v22    # "trustStore":Ljava/security/KeyStore;
    .end local v23    # "url":Ljava/net/URL;
    :catch_174
    move-exception v5

    .line 354
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    :try_start_175
    const-string v26, "DcmNextiPlayReadyService"

    const-string v27, "Catch IllegalArgumentException Exceptions"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const-string v26, "DcmNextiPlayReadyService"

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_188
    .catchall {:try_start_175 .. :try_end_188} :catchall_20e

    .line 366
    const-string v26, "DcmNextiPlayReadyService"

    const-string/jumbo v27, "resetting flag for later threads"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/16 v26, 0x1

    sput v26, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    .line 369
    if-eqz v24, :cond_d3

    .line 371
    invoke-virtual/range {v24 .. v24}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_d3

    .line 343
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "dateFormat":Ljava/text/DateFormat;
    .restart local v6    # "epochTime":Ljava/util/Date;
    .restart local v8    # "epoch_time_long":J
    .restart local v10    # "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v12    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v13    # "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v18    # "s":Ljava/lang/StringBuilder;
    .restart local v19    # "sf":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v22    # "trustStore":Ljava/security/KeyStore;
    .restart local v23    # "url":Ljava/net/URL;
    :cond_19b
    :try_start_19b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    const-wide/16 v28, 0x3e8

    div-long v20, v26, v28

    .line 344
    .local v20, "systime":J
    const-string v26, "DcmNextiPlayReadyService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Network state was changed. NTP time could not checked. noting to do. system time is "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1bf
    .catch Ljava/lang/SecurityException; {:try_start_19b .. :try_end_1bf} :catch_ae
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19b .. :try_end_1bf} :catch_174
    .catch Ljava/io/IOException; {:try_start_19b .. :try_end_1bf} :catch_1c0
    .catch Ljava/lang/Exception; {:try_start_19b .. :try_end_1bf} :catch_1e7
    .catchall {:try_start_19b .. :try_end_1bf} :catchall_20e

    goto :goto_156

    .line 357
    .end local v4    # "dateFormat":Ljava/text/DateFormat;
    .end local v6    # "epochTime":Ljava/util/Date;
    .end local v8    # "epoch_time_long":J
    .end local v10    # "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v13    # "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v18    # "s":Ljava/lang/StringBuilder;
    .end local v19    # "sf":Ljavax/net/ssl/SSLSocketFactory;
    .end local v20    # "systime":J
    .end local v22    # "trustStore":Ljava/security/KeyStore;
    .end local v23    # "url":Ljava/net/URL;
    :catch_1c0
    move-exception v5

    .line 358
    .local v5, "e":Ljava/io/IOException;
    :try_start_1c1
    const-string v26, "DcmNextiPlayReadyService"

    const-string v27, "Catch IOException Exceptions"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const-string v26, "DcmNextiPlayReadyService"

    invoke-virtual {v5}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1d4
    .catchall {:try_start_1c1 .. :try_end_1d4} :catchall_20e

    .line 366
    const-string v26, "DcmNextiPlayReadyService"

    const-string/jumbo v27, "resetting flag for later threads"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/16 v26, 0x1

    sput v26, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    .line 369
    if-eqz v24, :cond_d3

    .line 371
    invoke-virtual/range {v24 .. v24}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_d3

    .line 361
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1e7
    move-exception v5

    .line 362
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1e8
    const-string v26, "DcmNextiPlayReadyService"

    const-string v27, "Catch other Exceptions"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string v26, "DcmNextiPlayReadyService"

    invoke-virtual {v5}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1fb
    .catchall {:try_start_1e8 .. :try_end_1fb} :catchall_20e

    .line 366
    const-string v26, "DcmNextiPlayReadyService"

    const-string/jumbo v27, "resetting flag for later threads"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/16 v26, 0x1

    sput v26, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    .line 369
    if-eqz v24, :cond_d3

    .line 371
    invoke-virtual/range {v24 .. v24}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_d3

    .line 366
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_20e
    move-exception v26

    const-string v27, "DcmNextiPlayReadyService"

    const-string/jumbo v28, "resetting flag for later threads"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/16 v27, 0x1

    sput v27, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    .line 369
    if-eqz v24, :cond_220

    .line 371
    invoke-virtual/range {v24 .. v24}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_220
    throw v26
.end method
