.class final enum Lcom/android/camera/WatermarkManager$REQUEST_STATE;
.super Ljava/lang/Enum;
.source "WatermarkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/WatermarkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "REQUEST_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/WatermarkManager$REQUEST_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/WatermarkManager$REQUEST_STATE;

.field public static final enum INIT:Lcom/android/camera/WatermarkManager$REQUEST_STATE;

.field public static final enum PROCESSED:Lcom/android/camera/WatermarkManager$REQUEST_STATE;

.field public static final enum PROCESSING:Lcom/android/camera/WatermarkManager$REQUEST_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 181
    new-instance v0, Lcom/android/camera/WatermarkManager$REQUEST_STATE;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/WatermarkManager$REQUEST_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/WatermarkManager$REQUEST_STATE;->INIT:Lcom/android/camera/WatermarkManager$REQUEST_STATE;

    new-instance v0, Lcom/android/camera/WatermarkManager$REQUEST_STATE;

    const-string v1, "PROCESSING"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/WatermarkManager$REQUEST_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/WatermarkManager$REQUEST_STATE;->PROCESSING:Lcom/android/camera/WatermarkManager$REQUEST_STATE;

    new-instance v0, Lcom/android/camera/WatermarkManager$REQUEST_STATE;

    const-string v1, "PROCESSED"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/WatermarkManager$REQUEST_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/WatermarkManager$REQUEST_STATE;->PROCESSED:Lcom/android/camera/WatermarkManager$REQUEST_STATE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/WatermarkManager$REQUEST_STATE;

    sget-object v1, Lcom/android/camera/WatermarkManager$REQUEST_STATE;->INIT:Lcom/android/camera/WatermarkManager$REQUEST_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/WatermarkManager$REQUEST_STATE;->PROCESSING:Lcom/android/camera/WatermarkManager$REQUEST_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/WatermarkManager$REQUEST_STATE;->PROCESSED:Lcom/android/camera/WatermarkManager$REQUEST_STATE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/WatermarkManager$REQUEST_STATE;->$VALUES:[Lcom/android/camera/WatermarkManager$REQUEST_STATE;

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
    .line 181
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/WatermarkManager$REQUEST_STATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 181
    const-class v0, Lcom/android/camera/WatermarkManager$REQUEST_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/WatermarkManager$REQUEST_STATE;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/WatermarkManager$REQUEST_STATE;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/android/camera/WatermarkManager$REQUEST_STATE;->$VALUES:[Lcom/android/camera/WatermarkManager$REQUEST_STATE;

    invoke-virtual {v0}, [Lcom/android/camera/WatermarkManager$REQUEST_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/WatermarkManager$REQUEST_STATE;

    return-object v0
.end method
