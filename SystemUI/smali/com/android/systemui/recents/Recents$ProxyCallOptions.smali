.class Lcom/android/systemui/recents/Recents$ProxyCallOptions;
.super Ljava/lang/Object;
.source "Recents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/Recents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProxyCallOptions"
.end annotation


# instance fields
.field public triggeredFromAltTab:Z

.field public triggeredFromHomeKey:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recents/Recents$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/recents/Recents$1;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents$ProxyCallOptions;-><init>()V

    return-void
.end method
