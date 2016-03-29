.class Lcom/android/systemui/qs/tiles/SmartStayTile$3;
.super Ljava/lang/Object;
.source "SmartStayTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/SmartStayTile;->showTalkBackDisablePopup(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SmartStayTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SmartStayTile;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SmartStayTile$3;->this$0:Lcom/android/systemui/qs/tiles/SmartStayTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartStayTile$3;->this$0:Lcom/android/systemui/qs/tiles/SmartStayTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SmartStayTile;->doNext()V

    .line 304
    return-void
.end method
