.class final enum Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;
.super Ljava/lang/Enum;
.source "VideoFacadeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/video/VideoFacadeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "VideoFacadeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

.field public static final enum IDLE:Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

.field public static final enum RUNNING:Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

.field public static final enum STOPPING:Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;->IDLE:Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

    .line 53
    new-instance v0, Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;->RUNNING:Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

    .line 54
    new-instance v0, Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

    const-string v1, "STOPPING"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;->STOPPING:Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

    sget-object v1, Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;->IDLE:Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;->RUNNING:Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;->STOPPING:Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;->$VALUES:[Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const-class v0, Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;->$VALUES:[Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

    invoke-virtual {v0}, [Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

    return-object v0
.end method
