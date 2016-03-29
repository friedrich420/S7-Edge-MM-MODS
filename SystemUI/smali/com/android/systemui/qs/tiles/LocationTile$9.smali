.class Lcom/android/systemui/qs/tiles/LocationTile$9;
.super Ljava/lang/Object;
.source "LocationTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/LocationTile;->showLocationDialogForDCM(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/LocationTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/LocationTile;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile$9;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$9;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    # invokes: Lcom/android/systemui/qs/tiles/LocationTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->access$1100(Lcom/android/systemui/qs/tiles/LocationTile;)V

    .line 441
    return-void
.end method
