.class Lcom/android/systemui/tuner/QsTuner$CustomHost$1;
.super Ljava/lang/Object;
.source "QsTuner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tuner/QsTuner$CustomHost;->showAddDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tuner/QsTuner$CustomHost;

.field final synthetic val$available:[Ljava/lang/String;

.field final synthetic val$availableTiles:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/QsTuner$CustomHost;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/systemui/tuner/QsTuner$CustomHost$1;->this$0:Lcom/android/systemui/tuner/QsTuner$CustomHost;

    iput-object p2, p0, Lcom/android/systemui/tuner/QsTuner$CustomHost$1;->val$available:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/tuner/QsTuner$CustomHost$1;->val$availableTiles:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner$CustomHost$1;->val$available:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge p2, v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner$CustomHost$1;->this$0:Lcom/android/systemui/tuner/QsTuner$CustomHost;

    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$CustomHost$1;->val$availableTiles:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->add(Ljava/lang/String;)V

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner$CustomHost$1;->this$0:Lcom/android/systemui/tuner/QsTuner$CustomHost;

    invoke-virtual {v0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->showBroadcastTileDialog()V

    goto :goto_0
.end method
