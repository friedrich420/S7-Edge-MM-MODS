.class Lcom/android/systemui/qs/tiles/SyncTile$3;
.super Ljava/lang/Object;
.source "SyncTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/SyncTile;->showConfirmPopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SyncTile;

.field final synthetic val$state:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SyncTile;Z)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SyncTile$3;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/SyncTile$3;->val$state:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 152
    new-instance v0, Lcom/android/systemui/qs/tiles/SyncTile$3$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SyncTile$3$1;-><init>(Lcom/android/systemui/qs/tiles/SyncTile$3;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/SyncTile$3$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 163
    return-void
.end method
