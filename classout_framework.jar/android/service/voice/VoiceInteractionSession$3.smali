.class Landroid/service/voice/VoiceInteractionSession$3;
.super Ljava/lang/Object;
.source "VoiceInteractionSession.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/VoiceInteractionSession;


# direct methods
.method constructor <init>(Landroid/service/voice/VoiceInteractionSession;)V
    .registers 2

    .prologue
    .line 914
    iput-object p1, p0, this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .prologue
    .line 916
    iget-object v0, p0, this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, p0, this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

    invoke-virtual {v0, v1}, Landroid/service/voice/VoiceInteractionSession;->onComputeInsets(Landroid/service/voice/VoiceInteractionSession$Insets;)V

    .line 917
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 918
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    iget-object v1, p0, this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 919
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 920
    iget-object v0, p0, this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession;->mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

    iget v0, v0, Landroid/service/voice/VoiceInteractionSession$Insets;->touchableInsets:I

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 921
    return-void
.end method
