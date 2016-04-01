.class Lcom/sec/epdg/EpdgSettingsWriter$SettingData;
.super Ljava/lang/Object;
.source "EpdgSettingsWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgSettingsWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingData"
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field public val:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, key:Ljava/lang/String;

    .line 70
    iput-object p2, p0, val:Ljava/lang/String;

    .line 71
    return-void
.end method
