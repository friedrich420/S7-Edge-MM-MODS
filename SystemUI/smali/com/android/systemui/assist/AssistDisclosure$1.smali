.class Lcom/android/systemui/assist/AssistDisclosure$1;
.super Ljava/lang/Object;
.source "AssistDisclosure.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/AssistDisclosure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistDisclosure;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistDisclosure;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/systemui/assist/AssistDisclosure$1;->this$0:Lcom/android/systemui/assist/AssistDisclosure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$1;->this$0:Lcom/android/systemui/assist/AssistDisclosure;

    # invokes: Lcom/android/systemui/assist/AssistDisclosure;->show()V
    invoke-static {v0}, Lcom/android/systemui/assist/AssistDisclosure;->access$000(Lcom/android/systemui/assist/AssistDisclosure;)V

    .line 91
    return-void
.end method
