.class Lcom/android/systemui/qs/tiles/LocationTile$6;
.super Ljava/lang/Object;
.source "LocationTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 390
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile$6;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$6;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    const/4 v1, 0x3

    # invokes: Lcom/android/systemui/qs/tiles/LocationTile;->setLocationMode(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/LocationTile;->access$1000(Lcom/android/systemui/qs/tiles/LocationTile;I)V

    .line 393
    return-void
.end method
