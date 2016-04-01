.class public Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
.super Ljava/lang/Object;
.source "EFSProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/EFSProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyguardProperties"
.end annotation


# instance fields
.field public csName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "csName"    # Ljava/lang/String;

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p1, p0, csName:Ljava/lang/String;

    .line 276
    return-void
.end method
