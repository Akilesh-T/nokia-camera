.class public final enum Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;
.super Ljava/lang/Enum;
.source "GLDofRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/utils/GLDofRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BOKEH_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;

.field public static final enum BIOTAR:Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;

.field public static final enum PLANAR:Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;

    const-string v1, "PLANAR"

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;->PLANAR:Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;

    new-instance v0, Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;

    const-string v1, "BIOTAR"

    invoke-direct {v0, v1, v3}, Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;->BIOTAR:Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;

    sget-object v1, Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;->PLANAR:Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;->BIOTAR:Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;->$VALUES:[Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;->$VALUES:[Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;

    invoke-virtual {v0}, [Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;

    return-object v0
.end method
