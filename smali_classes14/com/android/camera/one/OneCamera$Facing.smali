.class public final enum Lcom/android/camera/one/OneCamera$Facing;
.super Ljava/lang/Enum;
.source "OneCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/OneCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Facing"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/OneCamera$Facing;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/one/OneCamera$Facing;

.field public static final enum BACK:Lcom/android/camera/one/OneCamera$Facing;

.field public static final enum FRONT:Lcom/android/camera/one/OneCamera$Facing;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/android/camera/one/OneCamera$Facing;

    const-string v1, "FRONT"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/OneCamera$Facing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    new-instance v0, Lcom/android/camera/one/OneCamera$Facing;

    const-string v1, "BACK"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/one/OneCamera$Facing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/one/OneCamera$Facing;

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/camera/one/OneCamera$Facing;->$VALUES:[Lcom/android/camera/one/OneCamera$Facing;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/one/OneCamera$Facing;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lcom/android/camera/one/OneCamera$Facing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCamera$Facing;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/one/OneCamera$Facing;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->$VALUES:[Lcom/android/camera/one/OneCamera$Facing;

    invoke-virtual {v0}, [Lcom/android/camera/one/OneCamera$Facing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/OneCamera$Facing;

    return-object v0
.end method
