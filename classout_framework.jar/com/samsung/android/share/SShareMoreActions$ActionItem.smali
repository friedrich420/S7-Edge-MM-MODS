.class Lcom/samsung/android/share/SShareMoreActions$ActionItem;
.super Ljava/lang/Object;
.source "SShareMoreActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/SShareMoreActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionItem"
.end annotation


# instance fields
.field icon:I

.field id:I

.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/share/SShareMoreActions;


# direct methods
.method constructor <init>(Lcom/samsung/android/share/SShareMoreActions;IILjava/lang/String;)V
    .registers 5
    .param p2, "pID"    # I
    .param p3, "pIcon"    # I
    .param p4, "pName"    # Ljava/lang/String;

    .prologue
    .line 289
    iput-object p1, p0, this$0:Lcom/samsung/android/share/SShareMoreActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput p2, p0, id:I

    .line 291
    iput p3, p0, icon:I

    .line 292
    iput-object p4, p0, name:Ljava/lang/String;

    .line 293
    return-void
.end method
