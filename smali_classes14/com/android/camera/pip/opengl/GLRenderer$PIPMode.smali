.class public final enum Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;
.super Ljava/lang/Enum;
.source "GLRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/pip/opengl/GLRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PIPMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

.field public static final enum NORMAL:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

.field public static final enum REAR_DOWN_FRONT_UP:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

.field public static final enum REAR_FULL_FRONT_SUB:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

.field public static final enum REAR_SUB_FRONT_FULL:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

.field public static final enum REAR_UP_FRONT_DOWN:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->NORMAL:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    new-instance v0, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    const-string v1, "REAR_UP_FRONT_DOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_UP_FRONT_DOWN:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    new-instance v0, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    const-string v1, "REAR_DOWN_FRONT_UP"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_DOWN_FRONT_UP:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    new-instance v0, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    const-string v1, "REAR_FULL_FRONT_SUB"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_FULL_FRONT_SUB:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    new-instance v0, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    const-string v1, "REAR_SUB_FRONT_FULL"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_SUB_FRONT_FULL:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    sget-object v1, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->NORMAL:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_UP_FRONT_DOWN:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_DOWN_FRONT_UP:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_FULL_FRONT_SUB:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_SUB_FRONT_FULL:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->$VALUES:[Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->$VALUES:[Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    invoke-virtual {v0}, [Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    return-object v0
.end method
