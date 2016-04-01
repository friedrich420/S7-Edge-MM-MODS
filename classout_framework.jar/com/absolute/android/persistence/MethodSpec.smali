.class public Lcom/absolute/android/persistence/MethodSpec;
.super Ljava/lang/Object;
.source "MethodSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/absolute/android/persistence/MethodSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_apkOrJarPath:Ljava/lang/String;

.field private m_argTypes:[Ljava/lang/Class;

.field private m_argValues:[Ljava/lang/Object;

.field private m_className:Ljava/lang/String;

.field private m_methodName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 136
    new-instance v0, Lcom/absolute/android/persistence/MethodSpec$1;

    invoke-direct {v0}, Lcom/absolute/android/persistence/MethodSpec$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, m_apkOrJarPath:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, m_className:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, m_methodName:Ljava/lang/String;

    .line 151
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, m_argValues:[Ljava/lang/Object;

    .line 152
    invoke-direct {p0}, loadArgumentTypes()V

    .line 153
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/absolute/android/persistence/MethodSpec$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/absolute/android/persistence/MethodSpec$1;

    .prologue
    .line 17
    invoke-direct {p0, p1}, <init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .param p1, "apkOrJarPath"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "argValues"    # [Ljava/lang/Object;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "apk or jar path is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_d
    if-nez p2, :cond_17

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "class name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_17
    if-nez p3, :cond_22

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "method name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_22
    iput-object p1, p0, m_apkOrJarPath:Ljava/lang/String;

    .line 60
    iput-object p2, p0, m_className:Ljava/lang/String;

    .line 61
    iput-object p3, p0, m_methodName:Ljava/lang/String;

    .line 62
    iput-object p4, p0, m_argValues:[Ljava/lang/Object;

    .line 63
    invoke-direct {p0}, loadArgumentTypes()V

    .line 64
    return-void
.end method

.method private loadArgumentTypes()V
    .registers 4

    .prologue
    .line 157
    iget-object v1, p0, m_argValues:[Ljava/lang/Object;

    if-eqz v1, :cond_20

    .line 158
    iget-object v1, p0, m_argValues:[Ljava/lang/Object;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Class;

    iput-object v1, p0, m_argTypes:[Ljava/lang/Class;

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v1, p0, m_argValues:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_23

    .line 160
    iget-object v1, p0, m_argTypes:[Ljava/lang/Class;

    iget-object v2, p0, m_argValues:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 164
    .end local v0    # "i":I
    :cond_20
    const/4 v1, 0x0

    iput-object v1, p0, m_argTypes:[Ljava/lang/Class;

    .line 166
    :cond_23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public getApkOrJarPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, m_apkOrJarPath:Ljava/lang/String;

    return-object v0
.end method

.method public getArgTypes()[Ljava/lang/Class;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, m_argTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public getArgValues()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, m_argValues:[Ljava/lang/Object;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, m_className:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, m_methodName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 127
    iget-object v0, p0, m_apkOrJarPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, m_className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, m_methodName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, m_argValues:[Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 131
    return-void
.end method
