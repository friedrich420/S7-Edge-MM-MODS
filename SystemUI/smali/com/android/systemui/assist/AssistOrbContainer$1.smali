.class Lcom/android/systemui/assist/AssistOrbContainer$1;
.super Ljava/lang/Object;
.source "AssistOrbContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/assist/AssistOrbContainer;->show(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistOrbContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistOrbContainer;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/systemui/assist/AssistOrbContainer$1;->this$0:Lcom/android/systemui/assist/AssistOrbContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer$1;->this$0:Lcom/android/systemui/assist/AssistOrbContainer;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/assist/AssistOrbContainer;->mAnimatingOut:Z
    invoke-static {v0, v1}, Lcom/android/systemui/assist/AssistOrbContainer;->access$002(Lcom/android/systemui/assist/AssistOrbContainer;Z)Z

    .line 82
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer$1;->this$0:Lcom/android/systemui/assist/AssistOrbContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/assist/AssistOrbContainer;->setVisibility(I)V

    .line 83
    return-void
.end method
