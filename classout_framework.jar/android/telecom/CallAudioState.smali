.class public final Landroid/telecom/CallAudioState;
.super Ljava/lang/Object;
.source "CallAudioState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/CallAudioState;",
            ">;"
        }
    .end annotation
.end field

.field private static final ROUTE_ALL:I = 0xf

.field public static final ROUTE_BLUETOOTH:I = 0x2

.field public static final ROUTE_EARPIECE:I = 0x1

.field public static final ROUTE_SPEAKER:I = 0x8

.field public static final ROUTE_WIRED_HEADSET:I = 0x4

.field public static final ROUTE_WIRED_OR_EARPIECE:I = 0x5


# instance fields
.field private final isMuted:Z

.field private final route:I

.field private final supportedRouteMask:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 168
    new-instance v0, Landroid/telecom/CallAudioState$1;

    invoke-direct {v0}, Landroid/telecom/CallAudioState$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/telecom/AudioState;)V
    .registers 3
    .param p1, "state"    # Landroid/telecom/AudioState;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/telecom/AudioState;->isMuted()Z

    move-result v0

    iput-boolean v0, p0, isMuted:Z

    .line 89
    invoke-virtual {p1}, Landroid/telecom/AudioState;->getRoute()I

    move-result v0

    iput v0, p0, route:I

    .line 90
    invoke-virtual {p1}, Landroid/telecom/AudioState;->getSupportedRouteMask()I

    move-result v0

    iput v0, p0, supportedRouteMask:I

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/telecom/CallAudioState;)V
    .registers 3
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, isMuted()Z

    move-result v0

    iput-boolean v0, p0, isMuted:Z

    .line 81
    invoke-virtual {p1}, getRoute()I

    move-result v0

    iput v0, p0, route:I

    .line 82
    invoke-virtual {p1}, getSupportedRouteMask()I

    move-result v0

    iput v0, p0, supportedRouteMask:I

    .line 83
    return-void
.end method

.method public constructor <init>(ZII)V
    .registers 4
    .param p1, "muted"    # Z
    .param p2, "route"    # I
    .param p3, "supportedRouteMask"    # I

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean p1, p0, isMuted:Z

    .line 74
    iput p2, p0, route:I

    .line 75
    iput p3, p0, supportedRouteMask:I

    .line 76
    return-void
.end method

.method public static audioRouteToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "route"    # I

    .prologue
    .line 144
    if-eqz p0, :cond_6

    and-int/lit8 v1, p0, -0x10

    if-eqz v1, :cond_9

    .line 145
    :cond_6
    const-string v1, "UNKNOWN"

    .line 162
    :goto_8
    return-object v1

    .line 148
    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 149
    .local v0, "buffer":Ljava/lang/StringBuffer;
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    .line 150
    const-string v1, "EARPIECE"

    invoke-static {v0, v1}, listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 152
    :cond_18
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_22

    .line 153
    const-string v1, "BLUETOOTH"

    invoke-static {v0, v1}, listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 155
    :cond_22
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2c

    .line 156
    const-string v1, "WIRED_HEADSET"

    invoke-static {v0, v1}, listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 158
    :cond_2c
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_37

    .line 159
    const-string v1, "SPEAKER"

    invoke-static {v0, v1}, listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 162
    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method private static listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 3
    .param p0, "buffer"    # Ljava/lang/StringBuffer;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 205
    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    :cond_b
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 95
    if-nez p1, :cond_4

    .line 102
    :cond_3
    :goto_3
    return v1

    .line 98
    :cond_4
    instance-of v2, p1, Landroid/telecom/CallAudioState;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 101
    check-cast v0, Landroid/telecom/CallAudioState;

    .line 102
    .local v0, "state":Landroid/telecom/CallAudioState;
    invoke-virtual {p0}, isMuted()Z

    move-result v2

    invoke-virtual {v0}, isMuted()Z

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, getRoute()I

    move-result v2

    invoke-virtual {v0}, getRoute()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, getSupportedRouteMask()I

    move-result v2

    invoke-virtual {v0}, getSupportedRouteMask()I

    move-result v3

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3
.end method

.method public getRoute()I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, route:I

    return v0
.end method

.method public getSupportedRouteMask()I
    .registers 2

    .prologue
    .line 133
    iget v0, p0, supportedRouteMask:I

    return v0
.end method

.method public isMuted()Z
    .registers 2

    .prologue
    .line 119
    iget-boolean v0, p0, isMuted:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 108
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "[AudioState isMuted: %b, route: %s, supportedRouteMask: %s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, isMuted:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, route:I

    invoke-static {v4}, audioRouteToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, supportedRouteMask:I

    invoke-static {v4}, audioRouteToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 198
    iget-boolean v0, p0, isMuted:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_5
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 199
    iget v0, p0, route:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget v0, p0, supportedRouteMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    return-void

    .line 198
    :cond_14
    const/4 v0, 0x0

    goto :goto_5
.end method
