.class final Lcom/android/server/AppOpsService$UidState;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UidState"
.end annotation


# instance fields
.field public opModes:Landroid/util/SparseIntArray;

.field public pkgOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AppOpsService$Ops;",
            ">;"
        }
    .end annotation
.end field

.field public final uid:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput p1, p0, uid:I

    .line 132
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, pkgOps:Landroid/util/ArrayMap;

    .line 136
    iput-object v0, p0, opModes:Landroid/util/SparseIntArray;

    .line 137
    return-void
.end method

.method public isDefault()Z
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, pkgOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_c

    iget-object v0, p0, pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_c
    iget-object v0, p0, opModes:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_18

    iget-object v0, p0, opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-gtz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
