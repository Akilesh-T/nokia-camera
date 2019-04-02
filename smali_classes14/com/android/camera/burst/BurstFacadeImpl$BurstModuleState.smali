.class final enum Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;
.super Ljava/lang/Enum;
.source "BurstFacadeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/BurstFacadeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BurstModuleState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

.field public static final enum IDLE:Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

.field public static final enum RUNNING:Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

.field public static final enum STOPPING:Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;->IDLE:Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

    .line 48
    new-instance v0, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;->RUNNING:Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

    .line 49
    new-instance v0, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

    const-string v1, "STOPPING"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;->STOPPING:Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

    sget-object v1, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;->IDLE:Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;->RUNNING:Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;->STOPPING:Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;->$VALUES:[Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;->$VALUES:[Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

    invoke-virtual {v0}, [Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

    return-object v0
.end method
