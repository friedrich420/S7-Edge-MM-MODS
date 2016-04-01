.class public Lcom/samsung/android/contextaware/manager/ContextBean;
.super Ljava/lang/Object;
.source "ContextBean.java"


# instance fields
.field private mContextBundle:Landroid/os/Bundle;

.field private mContextBundleForDisplay:Landroid/os/Bundle;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p0}, clearContextBean()V

    .line 37
    return-void
.end method

.method private putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 374
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 378
    :cond_8
    :goto_8
    return-void

    .line 377
    :cond_9
    iget-object v0, p0, mContextBundleForDisplay:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method private putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .prologue
    .line 287
    if-eqz p2, :cond_5

    array-length v0, p2

    if-gtz v0, :cond_6

    .line 291
    :cond_5
    :goto_5
    return-void

    .line 290
    :cond_6
    iget-object v0, p0, mContextBundleForDisplay:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5
.end method


# virtual methods
.method protected final clearContextBean()V
    .registers 2

    .prologue
    .line 274
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, mContextBundle:Landroid/os/Bundle;

    .line 275
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, mContextBundleForDisplay:Landroid/os/Bundle;

    .line 276
    return-void
.end method

.method protected final getContextBundle()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, mContextBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getContextBundleForDisplay()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, mContextBundleForDisplay:Landroid/os/Bundle;

    return-object v0
.end method

.method public final putContext(Ljava/lang/String;D)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 105
    iget-object v0, p0, mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 106
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public final putContext(Ljava/lang/String;F)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 92
    iget-object v0, p0, mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 93
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public final putContext(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 79
    iget-object v0, p0, mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public final putContext(Ljava/lang/String;J)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 118
    iget-object v0, p0, mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 119
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public final putContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 157
    iget-object v0, p0, mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 158
    return-void
.end method

.method public final putContext(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v0, p0, mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0, p1, p2}, putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public final putContext(Ljava/lang/String;S)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .prologue
    .line 131
    iget-object v0, p0, mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 132
    invoke-static {p2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public final putContext(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 66
    iget-object v0, p0, mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 67
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public final putContext(Ljava/lang/String;[D)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [D

    .prologue
    .line 235
    if-eqz p2, :cond_5

    array-length v2, p2

    if-gez v2, :cond_6

    .line 246
    :cond_5
    :goto_5
    return-void

    .line 239
    :cond_6
    iget-object v2, p0, mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 241
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 242
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v2, p2

    if-ge v0, v2, :cond_1d

    .line 243
    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 245
    :cond_1d
    invoke-direct {p0, p1, v1}, putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5
.end method

.method public final putContext(Ljava/lang/String;[F)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .prologue
    .line 213
    if-eqz p2, :cond_5

    array-length v2, p2

    if-gtz v2, :cond_6

    .line 224
    :cond_5
    :goto_5
    return-void

    .line 217
    :cond_6
    iget-object v2, p0, mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 219
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 220
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v2, p2

    if-ge v0, v2, :cond_1d

    .line 221
    aget v2, p2, v0

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 223
    :cond_1d
    invoke-direct {p0, p1, v1}, putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5
.end method

.method public final putContext(Ljava/lang/String;[I)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .prologue
    .line 191
    if-eqz p2, :cond_5

    array-length v2, p2

    if-gez v2, :cond_6

    .line 202
    :cond_5
    :goto_5
    return-void

    .line 195
    :cond_6
    iget-object v2, p0, mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 197
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 198
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v2, p2

    if-ge v0, v2, :cond_1d

    .line 199
    aget v2, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 201
    :cond_1d
    invoke-direct {p0, p1, v1}, putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5
.end method

.method public final putContext(Ljava/lang/String;[J)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .prologue
    .line 257
    if-eqz p2, :cond_5

    array-length v2, p2

    if-gez v2, :cond_6

    .line 268
    :cond_5
    :goto_5
    return-void

    .line 261
    :cond_6
    iget-object v2, p0, mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 263
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 264
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v2, p2

    if-ge v0, v2, :cond_1d

    .line 265
    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 267
    :cond_1d
    invoke-direct {p0, p1, v1}, putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5
.end method

.method public final putContext(Ljava/lang/String;[Z)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .prologue
    .line 169
    if-eqz p2, :cond_5

    array-length v2, p2

    if-gtz v2, :cond_6

    .line 180
    :cond_5
    :goto_5
    return-void

    .line 173
    :cond_6
    iget-object v2, p0, mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 175
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 176
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v2, p2

    if-ge v0, v2, :cond_1d

    .line 177
    aget-boolean v2, p2, v0

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 179
    :cond_1d
    invoke-direct {p0, p1, v1}, putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5
.end method

.method public final putContextForDisplay(Ljava/lang/String;D)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 338
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;F)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 326
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 314
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;J)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 350
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;S)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .prologue
    .line 362
    invoke-static {p2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 302
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;[D)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [D

    .prologue
    .line 448
    if-eqz p2, :cond_5

    array-length v2, p2

    if-gtz v2, :cond_6

    .line 456
    :cond_5
    :goto_5
    return-void

    .line 451
    :cond_6
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 452
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v2, p2

    if-ge v0, v2, :cond_18

    .line 453
    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 455
    :cond_18
    invoke-direct {p0, p1, v1}, putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5
.end method

.method public final putContextForDisplay(Ljava/lang/String;[F)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .prologue
    .line 428
    if-eqz p2, :cond_5

    array-length v2, p2

    if-gtz v2, :cond_6

    .line 436
    :cond_5
    :goto_5
    return-void

    .line 431
    :cond_6
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 432
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v2, p2

    if-ge v0, v2, :cond_18

    .line 433
    aget v2, p2, v0

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 432
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 435
    :cond_18
    invoke-direct {p0, p1, v1}, putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5
.end method

.method public final putContextForDisplay(Ljava/lang/String;[I)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .prologue
    .line 409
    if-eqz p2, :cond_5

    array-length v2, p2

    if-gtz v2, :cond_6

    .line 417
    :cond_5
    :goto_5
    return-void

    .line 412
    :cond_6
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 413
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v2, p2

    if-ge v0, v2, :cond_18

    .line 414
    aget v2, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 416
    :cond_18
    invoke-direct {p0, p1, v1}, putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5
.end method

.method public final putContextForDisplay(Ljava/lang/String;[J)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .prologue
    .line 467
    if-eqz p2, :cond_5

    array-length v2, p2

    if-gtz v2, :cond_6

    .line 475
    :cond_5
    :goto_5
    return-void

    .line 470
    :cond_6
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 471
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v2, p2

    if-ge v0, v2, :cond_18

    .line 472
    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 471
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 474
    :cond_18
    invoke-direct {p0, p1, v1}, putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5
.end method

.method public final putContextForDisplay(Ljava/lang/String;[Z)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .prologue
    .line 390
    if-eqz p2, :cond_5

    array-length v2, p2

    if-gtz v2, :cond_6

    .line 398
    :cond_5
    :goto_5
    return-void

    .line 393
    :cond_6
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 394
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v2, p2

    if-ge v0, v2, :cond_18

    .line 395
    aget-boolean v2, p2, v0

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 397
    :cond_18
    invoke-direct {p0, p1, v1}, putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5
.end method
