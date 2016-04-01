.class Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;
.super Ljava/lang/Object;
.source "DualScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/dualscreen/DualScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListenerInfo"
.end annotation


# instance fields
.field protected mScreenFocusChangeListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenFocusChangeListener;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
