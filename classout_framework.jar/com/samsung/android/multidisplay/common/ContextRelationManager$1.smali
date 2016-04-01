.class final Lcom/samsung/android/multidisplay/common/ContextRelationManager$1;
.super Landroid/util/Singleton;
.source "ContextRelationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multidisplay/common/ContextRelationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton",
        "<",
        "Lcom/samsung/android/multidisplay/common/ContextRelationManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/samsung/android/multidisplay/common/ContextRelationManager;
    .registers 3

    .prologue
    .line 73
    new-instance v0, Lcom/samsung/android/multidisplay/common/ContextRelationManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/multidisplay/common/ContextRelationManager;-><init>(Lcom/samsung/android/multidisplay/common/ContextRelationManager$1;)V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 71
    invoke-virtual {p0}, create()Lcom/samsung/android/multidisplay/common/ContextRelationManager;

    move-result-object v0

    return-object v0
.end method
