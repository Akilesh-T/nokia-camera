.class enum Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;
.super Ljava/lang/Enum;
.source "ConfigurationImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;

.field public static final enum BADGE:Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;

.field public static final enum EDIT:Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;

.field public static final enum INTERACT:Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;

.field public static final enum LAUNCH:Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl$1;

    const-string v1, "BADGE"

    const-string v2, "badge"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;->BADGE:Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;

    .line 22
    new-instance v0, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl$2;

    const-string v1, "EDIT"

    const-string v2, "edit"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;->EDIT:Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;

    .line 41
    new-instance v0, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl$3;

    const-string v1, "INTERACT"

    const-string v2, "interact"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;->INTERACT:Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;

    .line 52
    new-instance v0, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl$4;

    const-string v1, "LAUNCH"

    const-string v2, "launch"

    invoke-direct {v0, v1, v6, v2}, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;->LAUNCH:Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;

    sget-object v1, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;->BADGE:Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;->EDIT:Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;->INTERACT:Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;->LAUNCH:Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;->$VALUES:[Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput-object p3, p0, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;->key:Ljava/lang/String;

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl$1;

    .prologue
    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Z
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-static {p0, p1}, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;->checkArgument(ZLjava/lang/String;)V

    return-void
.end method

.method private static checkArgument(ZLjava/lang/String;)V
    .locals 1
    .param p0, "argument"    # Z
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 85
    if-nez p0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    return-void
.end method

.method private static checkResourceId(ILjava/lang/String;)V
    .locals 3
    .param p0, "resourceId"    # I
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be a valid resource id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;->checkArgument(ZLjava/lang/String;)V

    .line 82
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;->$VALUES:[Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;

    invoke-virtual {v0}, [Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;

    return-object v0
.end method


# virtual methods
.method getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;->key:Ljava/lang/String;

    return-object v0
.end method

.method validate(Lcom/android/camera/SpeicalTypeProviders/SpecialType;)V
    .locals 2
    .param p1, "specialType"    # Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    .prologue
    .line 75
    iget v0, p1, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->descriptionResourceId:I

    const-string v1, "description"

    invoke-static {v0, v1}, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;->checkResourceId(ILjava/lang/String;)V

    .line 76
    iget v0, p1, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->iconResourceId:I

    const-string v1, "icon"

    invoke-static {v0, v1}, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;->checkResourceId(ILjava/lang/String;)V

    .line 77
    iget v0, p1, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->nameResourceId:I

    const-string v1, "name"

    invoke-static {v0, v1}, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;->checkResourceId(ILjava/lang/String;)V

    .line 78
    return-void
.end method
