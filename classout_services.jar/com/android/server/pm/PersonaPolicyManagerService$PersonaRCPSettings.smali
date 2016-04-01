.class public Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
.super Ljava/lang/Object;
.source "PersonaPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersonaRCPSettings"
.end annotation


# instance fields
.field public property:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object v0, p0, property:Ljava/lang/String;

    .line 128
    iput-object v0, p0, value:Ljava/lang/String;

    .line 129
    return-void
.end method
