.class Lcom/android/systemui/qs/tiles/ColorInversionTile$2;
.super Ljava/lang/Object;
.source "ColorInversionTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/ColorInversionTile;->handleLongClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ColorInversionTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ColorInversionTile;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile$2;->this$0:Lcom/android/systemui/qs/tiles/ColorInversionTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile$2;->this$0:Lcom/android/systemui/qs/tiles/ColorInversionTile;

    # invokes: Lcom/android/systemui/qs/tiles/ColorInversionTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ColorInversionTile;->access$300(Lcom/android/systemui/qs/tiles/ColorInversionTile;)V

    .line 105
    return-void
.end method
