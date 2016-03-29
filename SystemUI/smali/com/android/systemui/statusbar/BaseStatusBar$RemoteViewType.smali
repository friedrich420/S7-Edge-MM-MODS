.class final enum Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;
.super Ljava/lang/Enum;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RemoteViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

.field public static final enum BIG_CONTENT_VIEW:Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

.field public static final enum HEADSUP_CONTENT_VIEW:Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

.field public static final enum PRIVATE_CONTENT_VIEW:Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

.field public static final enum PUBLIC_CONTENT_VIEW:Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 297
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    const-string v1, "PRIVATE_CONTENT_VIEW"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;->PRIVATE_CONTENT_VIEW:Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    const-string v1, "PUBLIC_CONTENT_VIEW"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;->PUBLIC_CONTENT_VIEW:Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    const-string v1, "BIG_CONTENT_VIEW"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;->BIG_CONTENT_VIEW:Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    const-string v1, "HEADSUP_CONTENT_VIEW"

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;->HEADSUP_CONTENT_VIEW:Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    .line 296
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    sget-object v1, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;->PRIVATE_CONTENT_VIEW:Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;->PUBLIC_CONTENT_VIEW:Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;->BIG_CONTENT_VIEW:Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;->HEADSUP_CONTENT_VIEW:Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;->$VALUES:[Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 296
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 296
    const-class v0, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;
    .locals 1

    .prologue
    .line 296
    sget-object v0, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;->$VALUES:[Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    return-object v0
.end method
