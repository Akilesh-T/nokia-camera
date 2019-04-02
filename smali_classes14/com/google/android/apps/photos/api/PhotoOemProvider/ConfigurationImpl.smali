.class enum Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;
.super Ljava/lang/Enum;
.source "ConfigurationImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;

.field public static final enum BADGE:Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;

.field public static final enum EDIT:Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;

.field public static final enum INTERACT:Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;

.field public static final enum LAUNCH:Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;


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

    .line 11
    new-instance v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl$1;

    const-string v1, "BADGE"

    const-string v2, "badge"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;->BADGE:Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;

    .line 23
    new-instance v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl$2;

    const-string v1, "EDIT"

    const-string v2, "edit"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;->EDIT:Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;

    .line 42
    new-instance v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl$3;

    const-string v1, "INTERACT"

    const-string v2, "interact"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;->INTERACT:Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;

    .line 53
    new-instance v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl$4;

    const-string v1, "LAUNCH"

    const-string v2, "launch"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;->LAUNCH:Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;

    sget-object v1, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;->BADGE:Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;->EDIT:Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;->INTERACT:Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;->LAUNCH:Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;->$VALUES:[Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;

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
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput-object p3, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;->key:Ljava/lang/String;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl$1;

    .prologue
    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Z
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-static {p0, p1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;->checkArgument(ZLjava/lang/String;)V

    return-void
.end method

.method private static checkArgument(ZLjava/lang/String;)V
    .locals 1
    .param p0, "argument"    # Z
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 86
    if-nez p0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    return-void
.end method

.method private static checkResourceId(ILjava/lang/String;)V
    .locals 3
    .param p0, "resourceId"    # I
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 82
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

    invoke-static {v0, v1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;->checkArgument(ZLjava/lang/String;)V

    .line 83
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;->$VALUES:[Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;

    invoke-virtual {v0}, [Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;

    return-object v0
.end method


# virtual methods
.method getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;->key:Ljava/lang/String;

    return-object v0
.end method

.method validate(Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;)V
    .locals 2
    .param p1, "specialType"    # Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    .prologue
    .line 76
    iget v0, p1, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->descriptionResourceId:I

    const-string v1, "description"

    invoke-static {v0, v1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;->checkResourceId(ILjava/lang/String;)V

    .line 77
    iget v0, p1, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->iconResourceId:I

    const-string v1, "icon"

    invoke-static {v0, v1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;->checkResourceId(ILjava/lang/String;)V

    .line 78
    iget v0, p1, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->nameResourceId:I

    const-string v1, "name"

    invoke-static {v0, v1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;->checkResourceId(ILjava/lang/String;)V

    .line 79
    return-void
.end method
