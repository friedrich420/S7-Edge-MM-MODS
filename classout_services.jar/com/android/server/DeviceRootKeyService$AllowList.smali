.class final Lcom/android/server/DeviceRootKeyService$AllowList;
.super Ljava/lang/Object;
.source "DeviceRootKeyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceRootKeyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AllowList"
.end annotation


# instance fields
.field private allowName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private allowUID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/DeviceRootKeyService;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceRootKeyService;)V
    .registers 3

    .prologue
    .line 795
    iput-object p1, p0, this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 796
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, allowName:Ljava/util/ArrayList;

    .line 797
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, allowUID:Ljava/util/ArrayList;

    .line 798
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 802
    iget-object v0, p0, allowName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    iget-object v0, p0, allowUID:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    return-void
.end method

.method public match(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 808
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, allowName:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 810
    iget-object v1, p0, allowName:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, allowUID:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_27

    .line 811
    const/4 v1, 0x1

    .line 814
    :goto_26
    return v1

    .line 808
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 814
    :cond_2a
    const/4 v1, 0x0

    goto :goto_26
.end method
