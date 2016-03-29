.class Lcom/android/systemui/qs/tiles/SyncTile$2;
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


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SyncTile;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SyncTile$2;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SyncTile$2;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    # getter for: Lcom/android/systemui/qs/tiles/SyncTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SyncTile;->access$200(Lcom/android/systemui/qs/tiles/SyncTile;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 171
    return-void
.end method
