.class public final enum Lcom/android/camera/DebugManager$DEBUG_STATE;
.super Ljava/lang/Enum;
.source "DebugManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/DebugManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DEBUG_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/DebugManager$DEBUG_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/DebugManager$DEBUG_STATE;

.field public static final enum JPEG_DONE:Lcom/android/camera/DebugManager$DEBUG_STATE;

.field public static final enum START:Lcom/android/camera/DebugManager$DEBUG_STATE;

.field public static final enum YUV_DONE:Lcom/android/camera/DebugManager$DEBUG_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/android/camera/DebugManager$DEBUG_STATE;

    const-string v1, "START"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/DebugManager$DEBUG_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/DebugManager$DEBUG_STATE;->START:Lcom/android/camera/DebugManager$DEBUG_STATE;

    new-instance v0, Lcom/android/camera/DebugManager$DEBUG_STATE;

    const-string v1, "YUV_DONE"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/DebugManager$DEBUG_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/DebugManager$DEBUG_STATE;->YUV_DONE:Lcom/android/camera/DebugManager$DEBUG_STATE;

    new-instance v0, Lcom/android/camera/DebugManager$DEBUG_STATE;

    const-string v1, "JPEG_DONE"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/DebugManager$DEBUG_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/DebugManager$DEBUG_STATE;->JPEG_DONE:Lcom/android/camera/DebugManager$DEBUG_STATE;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/DebugManager$DEBUG_STATE;

    sget-object v1, Lcom/android/camera/DebugManager$DEBUG_STATE;->START:Lcom/android/camera/DebugManager$DEBUG_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/DebugManager$DEBUG_STATE;->YUV_DONE:Lcom/android/camera/DebugManager$DEBUG_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/DebugManager$DEBUG_STATE;->JPEG_DONE:Lcom/android/camera/DebugManager$DEBUG_STATE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/DebugManager$DEBUG_STATE;->$VALUES:[Lcom/android/camera/DebugManager$DEBUG_STATE;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/DebugManager$DEBUG_STATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/android/camera/DebugManager$DEBUG_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/DebugManager$DEBUG_STATE;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/DebugManager$DEBUG_STATE;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/camera/DebugManager$DEBUG_STATE;->$VALUES:[Lcom/android/camera/DebugManager$DEBUG_STATE;

    invoke-virtual {v0}, [Lcom/android/camera/DebugManager$DEBUG_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/DebugManager$DEBUG_STATE;

    return-object v0
.end method
