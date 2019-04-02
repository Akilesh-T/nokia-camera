.class public final enum Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fih_foxconn/depthlib/refocus/DofEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BOKEH_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

.field public static final enum BIOTAR:Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

.field public static final enum CIRCLE:Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

.field public static final enum HEART:Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

.field public static final enum PLANAR:Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

.field public static final enum STAR:Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    const-string v1, "PLANAR"

    invoke-direct {v0, v1, v2}, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;->PLANAR:Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    new-instance v0, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    const-string v1, "BIOTAR"

    invoke-direct {v0, v1, v3}, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;->BIOTAR:Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    new-instance v0, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    const-string v1, "CIRCLE"

    invoke-direct {v0, v1, v4}, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;->CIRCLE:Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    new-instance v0, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    const-string v1, "STAR"

    invoke-direct {v0, v1, v5}, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;->STAR:Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    new-instance v0, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    const-string v1, "HEART"

    invoke-direct {v0, v1, v6}, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;->HEART:Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    sget-object v1, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;->PLANAR:Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;->BIOTAR:Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;->CIRCLE:Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;->STAR:Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;->HEART:Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;->$VALUES:[Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;
    .locals 1

    const-class v0, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;
    .locals 1

    sget-object v0, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;->$VALUES:[Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    invoke-virtual {v0}, [Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    return-object v0
.end method
