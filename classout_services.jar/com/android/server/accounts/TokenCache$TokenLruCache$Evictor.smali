.class Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;
.super Ljava/lang/Object;
.source "TokenCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/TokenCache$TokenLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Evictor"
.end annotation


# instance fields
.field private final mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/accounts/TokenCache$Key;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/accounts/TokenCache$TokenLruCache;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/TokenCache$TokenLruCache;)V
    .registers 3

    .prologue
    .line 88
    iput-object p1, p0, this$0:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mKeys:Ljava/util/List;

    .line 90
    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/accounts/TokenCache$Key;)V
    .registers 3
    .param p1, "k"    # Lcom/android/server/accounts/TokenCache$Key;

    .prologue
    .line 93
    iget-object v0, p0, mKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public evict()V
    .registers 4

    .prologue
    .line 97
    iget-object v2, p0, mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accounts/TokenCache$Key;

    .line 98
    .local v1, "k":Lcom/android/server/accounts/TokenCache$Key;
    iget-object v2, p0, this$0:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    invoke-virtual {v2, v1}, Lcom/android/server/accounts/TokenCache$TokenLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 100
    .end local v1    # "k":Lcom/android/server/accounts/TokenCache$Key;
    :cond_18
    return-void
.end method
