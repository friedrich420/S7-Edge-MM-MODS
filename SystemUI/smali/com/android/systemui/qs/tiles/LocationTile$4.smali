.class Lcom/android/systemui/qs/tiles/LocationTile$4;
.super Ljava/lang/Object;
.source "LocationTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/LocationTile;->showVzwLocationConsentDialog()V
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
    .line 401
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile$4;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 404
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$4;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$4;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    # getter for: Lcom/android/systemui/qs/tiles/LocationTile;->mCurrGpsActivated:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->access$200(Lcom/android/systemui/qs/tiles/LocationTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # invokes: Lcom/android/systemui/qs/tiles/LocationTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/LocationTile;->access$800(Lcom/android/systemui/qs/tiles/LocationTile;Ljava/lang/Object;)V

    .line 406
    return-void

    .line 404
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
