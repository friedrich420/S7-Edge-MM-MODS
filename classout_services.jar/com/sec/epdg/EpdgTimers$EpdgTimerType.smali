.class public final enum Lcom/sec/epdg/EpdgTimers$EpdgTimerType;
.super Ljava/lang/Enum;
.source "EpdgTimers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgTimers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EpdgTimerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/EpdgTimers$EpdgTimerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field public static final enum NOTDEFINED:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field public static final enum TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field public static final enum TEPDG1X:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field public static final enum TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field public static final enum TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field public static final enum TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field public static final enum TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field public static final enum TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field public static final enum TEPDGWIFIRSSIDELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;


# instance fields
.field private final mCommand:I

.field private final mText:Ljava/lang/String;

.field private final mTimerId:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 99
    new-instance v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const-string v1, "NOTDEFINED"

    const-string v5, "NOTDEFINED"

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, <init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, NOTDEFINED:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 100
    new-instance v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const-string v4, "TEPDG"

    const/16 v7, 0x38

    const-string v8, "TEPDG"

    move v5, v9

    move v6, v9

    invoke-direct/range {v3 .. v8}, <init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 101
    new-instance v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const-string v4, "TEPDGLTE"

    const/16 v7, 0x39

    const-string v8, "TEPDGLTE"

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v8}, <init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 102
    new-instance v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const-string v4, "TEPDG1X"

    const/16 v7, 0x3b

    const-string v8, "TEPDG1X"

    move v5, v11

    move v6, v11

    invoke-direct/range {v3 .. v8}, <init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, TEPDG1X:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 103
    new-instance v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const-string v4, "TEPDGHODELAYWIFI"

    const/16 v7, 0x3a

    const-string v8, "HODELAYWIFI"

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, <init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 104
    new-instance v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const-string v4, "TEPDGHODELAY"

    const/4 v5, 0x5

    const/4 v6, 0x5

    const/16 v7, 0x3c

    const-string v8, "HODELAY"

    invoke-direct/range {v3 .. v8}, <init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 105
    new-instance v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const-string v4, "TEPDG1XSCANNING"

    const/4 v5, 0x6

    const/4 v6, 0x6

    const/16 v7, 0x41

    const-string v8, "TEPDG1XSCANNING"

    invoke-direct/range {v3 .. v8}, <init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 106
    new-instance v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const-string v4, "TEPDGWIFIRSSIDELAY"

    const/4 v5, 0x7

    const/4 v6, 0x7

    const/16 v7, 0x48

    const-string v8, "WIFIRSSIDELAY"

    invoke-direct/range {v3 .. v8}, <init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, TEPDGWIFIRSSIDELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 107
    new-instance v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    const-string v4, "TEPDGWIFIIPCONFIG"

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v7, 0x4d

    const-string v8, "TEPDGWIFIIPCONFIG"

    invoke-direct/range {v3 .. v8}, <init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 98
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    sget-object v1, NOTDEFINED:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    aput-object v1, v0, v2

    sget-object v1, TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    aput-object v1, v0, v9

    sget-object v1, TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    aput-object v1, v0, v10

    sget-object v1, TEPDG1X:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    aput-object v1, v0, v11

    sget-object v1, TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, TEPDGWIFIRSSIDELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .registers 6
    .param p3, "id"    # I
    .param p4, "command"    # I
    .param p5, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 115
    iput p3, p0, mTimerId:I

    .line 116
    iput p4, p0, mCommand:I

    .line 117
    iput-object p5, p0, mText:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public static getTimerCommand(I)I
    .registers 6
    .param p0, "id"    # I

    .prologue
    .line 130
    invoke-static {}, values()[Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    move-result-object v0

    .local v0, "arr$":[Lcom/sec/epdg/EpdgTimers$EpdgTimerType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_6
    if-ge v1, v2, :cond_18

    aget-object v3, v0, v1

    .line 131
    .local v3, "timer":Lcom/sec/epdg/EpdgTimers$EpdgTimerType;
    invoke-virtual {v3}, getTimerId()I

    move-result v4

    if-ne p0, v4, :cond_15

    .line 132
    invoke-virtual {v3}, getTimerCommand()I

    move-result v4

    .line 135
    .end local v3    # "timer":Lcom/sec/epdg/EpdgTimers$EpdgTimerType;
    :goto_14
    return v4

    .line 130
    .restart local v3    # "timer":Lcom/sec/epdg/EpdgTimers$EpdgTimerType;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 135
    .end local v3    # "timer":Lcom/sec/epdg/EpdgTimers$EpdgTimerType;
    :cond_18
    const/4 v4, 0x0

    goto :goto_14
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/EpdgTimers$EpdgTimerType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    const-class v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/EpdgTimers$EpdgTimerType;
    .registers 1

    .prologue
    .line 98
    sget-object v0, $VALUES:[Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0}, [Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    return-object v0
.end method


# virtual methods
.method public getTimerCommand()I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, mCommand:I

    return v0
.end method

.method public getTimerId()I
    .registers 2

    .prologue
    .line 121
    iget v0, p0, mTimerId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, mText:Ljava/lang/String;

    return-object v0
.end method
