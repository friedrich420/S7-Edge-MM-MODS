.class Lcom/android/server/accounts/TokenCache;
.super Ljava/lang/Object;
.source "TokenCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accounts/TokenCache$TokenLruCache;,
        Lcom/android/server/accounts/TokenCache$Key;,
        Lcom/android/server/accounts/TokenCache$Value;
    }
.end annotation


# static fields
.field private static final MAX_CACHE_CHARS:I = 0xfa00


# instance fields
.field private mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Lcom/android/server/accounts/TokenCache$TokenLruCache;

    invoke-direct {v0}, Lcom/android/server/accounts/TokenCache$TokenLruCache;-><init>()V

    iput-object v0, p0, mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    return-void
.end method


# virtual methods
.method public get(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .registers 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "tokenType"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "sigDigest"    # [B

    .prologue
    .line 220
    new-instance v2, Lcom/android/server/accounts/TokenCache$Key;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/server/accounts/TokenCache$Key;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 221
    .local v2, "k":Lcom/android/server/accounts/TokenCache$Key;
    iget-object v4, p0, mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    invoke-virtual {v4, v2}, Lcom/android/server/accounts/TokenCache$TokenLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accounts/TokenCache$Value;

    .line 222
    .local v3, "v":Lcom/android/server/accounts/TokenCache$Value;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 223
    .local v0, "currentTime":J
    if-eqz v3, :cond_1c

    iget-wide v4, v3, Lcom/android/server/accounts/TokenCache$Value;->expiryEpochMillis:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_1c

    .line 224
    iget-object v4, v3, Lcom/android/server/accounts/TokenCache$Value;->token:Ljava/lang/String;

    .line 228
    :goto_1b
    return-object v4

    .line 225
    :cond_1c
    if-eqz v3, :cond_25

    .line 226
    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/accounts/TokenCache$Value;->token:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_25
    const/4 v4, 0x0

    goto :goto_1b
.end method

.method public put(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJ)V
    .registers 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "tokenType"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "sigDigest"    # [B
    .param p6, "expiryMillis"    # J

    .prologue
    .line 195
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    if-eqz p2, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, p6

    if-lez v2, :cond_e

    .line 202
    :cond_d
    :goto_d
    return-void

    .line 199
    :cond_e
    new-instance v0, Lcom/android/server/accounts/TokenCache$Key;

    invoke-direct {v0, p1, p3, p4, p5}, Lcom/android/server/accounts/TokenCache$Key;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 200
    .local v0, "k":Lcom/android/server/accounts/TokenCache$Key;
    new-instance v1, Lcom/android/server/accounts/TokenCache$Value;

    invoke-direct {v1, p2, p6, p7}, Lcom/android/server/accounts/TokenCache$Value;-><init>(Ljava/lang/String;J)V

    .line 201
    .local v1, "v":Lcom/android/server/accounts/TokenCache$Value;
    iget-object v2, p0, mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/accounts/TokenCache$TokenLruCache;->putToken(Lcom/android/server/accounts/TokenCache$Key;Lcom/android/server/accounts/TokenCache$Value;)V

    goto :goto_d
.end method

.method public remove(Landroid/accounts/Account;)V
    .registers 3
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 213
    iget-object v0, p0, mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/TokenCache$TokenLruCache;->evict(Landroid/accounts/Account;)V

    .line 214
    return-void
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v0, p0, mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accounts/TokenCache$TokenLruCache;->evict(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method
