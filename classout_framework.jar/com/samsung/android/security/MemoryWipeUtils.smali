.class public Lcom/samsung/android/security/MemoryWipeUtils;
.super Ljava/lang/Object;
.source "MemoryWipeUtils.java"


# static fields
.field public static final DUMMY_SEND_COUNT:I = 0x40


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .registers 4

    .prologue
    const/16 v3, 0x10

    .line 33
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, clear(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 34
    return-void
.end method

.method public static clear(Landroid/os/IBinder;Ljava/lang/String;II)V
    .registers 22
    .param p0, "mRemote"    # Landroid/os/IBinder;
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "cmd"    # I
    .param p3, "size"    # I

    .prologue
    .line 39
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v14

    if-nez v14, :cond_16

    const-string v14, "encrypted"

    const-string/jumbo v15, "ro.crypto.state"

    invoke-static {v15}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_16

    .line 74
    :goto_15
    return-void

    .line 43
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 44
    .local v12, "start_time":J
    const-string v5, "                                "

    .line 45
    .local v5, "data":Ljava/lang/String;
    if-gez p3, :cond_20

    .line 46
    const/16 p3, 0x0

    .line 47
    :cond_20
    div-int/lit8 v14, p3, 0x20

    add-int/lit8 p3, v14, 0x1

    .line 49
    if-eqz p0, :cond_6c

    .line 50
    const/4 v4, 0x0

    .line 51
    .local v4, "_result":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_28
    const/16 v14, 0x40

    if-ge v10, v14, :cond_6c

    .line 52
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 53
    .local v2, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 55
    .local v3, "_reply":Landroid/os/Parcel;
    :try_start_34
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 56
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_3a
    move/from16 v0, p3

    if-ge v11, v0, :cond_44

    .line 57
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    add-int/lit8 v11, v11, 0x1

    goto :goto_3a

    .line 59
    :cond_44
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-interface {v0, v1, v2, v3, v14}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 60
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 61
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_52} :catch_5c
    .catchall {:try_start_34 .. :try_end_52} :catchall_64

    move-result v4

    .line 64
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 65
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 51
    .end local v11    # "j":I
    :goto_59
    add-int/lit8 v10, v10, 0x1

    goto :goto_28

    .line 62
    :catch_5c
    move-exception v14

    .line 64
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 65
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_59

    .line 64
    :catchall_64
    move-exception v14

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 65
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v14

    .line 70
    .end local v2    # "_data":Landroid/os/Parcel;
    .end local v3    # "_reply":Landroid/os/Parcel;
    .end local v4    # "_result":I
    .end local v10    # "i":I
    :cond_6c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 71
    .local v8, "end_time":J
    sub-long v6, v8, v12

    .line 72
    .local v6, "difference":J
    const-string v14, "MDPP"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v16, Ljava/lang/Exception;

    invoke-direct/range {v16 .. v16}, Ljava/lang/Exception;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v16

    const/16 v17, 0x1

    aget-object v16, v16, v17

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "::count = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x40

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", delay = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "ms"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15
.end method

.method public static clear([C)V
    .registers 3
    .param p0, "data"    # [C

    .prologue
    .line 28
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_a

    .line 29
    const/4 v1, 0x0

    aput-char v1, p0, v0

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 30
    :cond_a
    return-void
.end method

.method public static getChars(Landroid/widget/TextView;)[C
    .registers 5
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 17
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    check-cast v2, Landroid/text/SpannableStringBuilder;

    .line 19
    .local v2, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    new-array v0, v3, [C

    .line 20
    .local v0, "data":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-ge v1, v3, :cond_1c

    .line 21
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    aput-char v3, v0, v1

    .line 20
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 22
    :cond_1c
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 23
    return-object v0
.end method
