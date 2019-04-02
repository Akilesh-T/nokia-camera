.class final enum Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;
.super Ljava/lang/Enum;
.source "DualSightVideoFacadeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/video/DualSightVideoFacadeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DualSightVideoFacadeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

.field public static final enum IDLE:Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

.field public static final enum RUNNING:Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

.field public static final enum STOPPING:Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;->IDLE:Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

    .line 59
    new-instance v0, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;->RUNNING:Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

    .line 60
    new-instance v0, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

    const-string v1, "STOPPING"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;->STOPPING:Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

    sget-object v1, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;->IDLE:Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;->RUNNING:Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;->STOPPING:Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;->$VALUES:[Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;->$VALUES:[Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

    invoke-virtual {v0}, [Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

    return-object v0
.end method
