.class public final enum Lcom/android/camera/effect/util/EffectConstant$EffectType;
.super Ljava/lang/Enum;
.source "EffectConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/util/EffectConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EffectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/effect/util/EffectConstant$EffectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/effect/util/EffectConstant$EffectType;

.field public static final enum CATEGORY_ANIMOJI:Lcom/android/camera/effect/util/EffectConstant$EffectType;

.field public static final enum CATEGORY_LIGHTING:Lcom/android/camera/effect/util/EffectConstant$EffectType;

.field public static final enum CATEGORY_STICKER:Lcom/android/camera/effect/util/EffectConstant$EffectType;

.field public static final enum CATEGORY_THEME:Lcom/android/camera/effect/util/EffectConstant$EffectType;


# instance fields
.field private string:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 29
    new-instance v0, Lcom/android/camera/effect/util/EffectConstant$EffectType;

    const-string v1, "CATEGORY_STICKER"

    sget-object v2, Lcom/android/camera/opengl/effect/EffectMode;->STICKER:Lcom/android/camera/opengl/effect/EffectMode;

    invoke-virtual {v2}, Lcom/android/camera/opengl/effect/EffectMode;->getValue()I

    move-result v2

    const-string v3, "sticker"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/camera/effect/util/EffectConstant$EffectType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_STICKER:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    .line 30
    new-instance v0, Lcom/android/camera/effect/util/EffectConstant$EffectType;

    const-string v1, "CATEGORY_THEME"

    const-string v2, "theme"

    invoke-direct {v0, v1, v5, v8, v2}, Lcom/android/camera/effect/util/EffectConstant$EffectType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_THEME:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    .line 31
    new-instance v0, Lcom/android/camera/effect/util/EffectConstant$EffectType;

    const-string v1, "CATEGORY_ANIMOJI"

    sget-object v2, Lcom/android/camera/opengl/effect/EffectMode;->ANIMOJI:Lcom/android/camera/opengl/effect/EffectMode;

    invoke-virtual {v2}, Lcom/android/camera/opengl/effect/EffectMode;->getValue()I

    move-result v2

    const-string v3, "animoji"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/android/camera/effect/util/EffectConstant$EffectType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_ANIMOJI:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    .line 33
    new-instance v0, Lcom/android/camera/effect/util/EffectConstant$EffectType;

    const-string v1, "CATEGORY_LIGHTING"

    sget-object v2, Lcom/android/camera/opengl/effect/EffectMode;->LIGHTEN:Lcom/android/camera/opengl/effect/EffectMode;

    invoke-virtual {v2}, Lcom/android/camera/opengl/effect/EffectMode;->getValue()I

    move-result v2

    const-string v3, "lightening"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/camera/effect/util/EffectConstant$EffectType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_LIGHTING:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    .line 28
    new-array v0, v8, [Lcom/android/camera/effect/util/EffectConstant$EffectType;

    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_STICKER:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_THEME:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_ANIMOJI:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_LIGHTING:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/camera/effect/util/EffectConstant$EffectType;->$VALUES:[Lcom/android/camera/effect/util/EffectConstant$EffectType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "effectValue"    # I
    .param p4, "effectString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/camera/effect/util/EffectConstant$EffectType;->value:I

    iput-object p4, p0, Lcom/android/camera/effect/util/EffectConstant$EffectType;->string:Ljava/lang/String;

    return-void
.end method

.method public static getStringFromValue(I)Ljava/lang/String;
    .locals 5
    .param p0, "effectValue"    # I

    .prologue
    .line 52
    invoke-static {}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->values()[Lcom/android/camera/effect/util/EffectConstant$EffectType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 53
    .local v0, "type":Lcom/android/camera/effect/util/EffectConstant$EffectType;
    iget v4, v0, Lcom/android/camera/effect/util/EffectConstant$EffectType;->value:I

    if-ne v4, p0, :cond_0

    iget-object v1, v0, Lcom/android/camera/effect/util/EffectConstant$EffectType;->string:Ljava/lang/String;

    .line 55
    .end local v0    # "type":Lcom/android/camera/effect/util/EffectConstant$EffectType;
    :goto_1
    return-object v1

    .line 52
    .restart local v0    # "type":Lcom/android/camera/effect/util/EffectConstant$EffectType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v0    # "type":Lcom/android/camera/effect/util/EffectConstant$EffectType;
    :cond_1
    invoke-static {}, Lcom/android/camera/effect/util/EffectConstant;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EffectType cannot get string from:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 55
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getValueFromString(Ljava/lang/String;)I
    .locals 6
    .param p0, "effectString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 44
    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/camera/effect/util/EffectConstant;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "EffectType get value from null String!"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 48
    :goto_0
    return v1

    .line 45
    :cond_0
    invoke-static {}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->values()[Lcom/android/camera/effect/util/EffectConstant$EffectType;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 46
    .local v0, "type":Lcom/android/camera/effect/util/EffectConstant$EffectType;
    invoke-virtual {v0, p0}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v1, v0, Lcom/android/camera/effect/util/EffectConstant$EffectType;->value:I

    goto :goto_0

    .line 45
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 47
    .end local v0    # "type":Lcom/android/camera/effect/util/EffectConstant$EffectType;
    :cond_2
    invoke-static {}, Lcom/android/camera/effect/util/EffectConstant;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EffectType cannot get value from:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/effect/util/EffectConstant$EffectType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/util/EffectConstant$EffectType;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/effect/util/EffectConstant$EffectType;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/camera/effect/util/EffectConstant$EffectType;->$VALUES:[Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v0}, [Lcom/android/camera/effect/util/EffectConstant$EffectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/effect/util/EffectConstant$EffectType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/android/camera/effect/util/EffectConstant$EffectType;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectConstant$EffectType;->string:Ljava/lang/String;

    return-object v0
.end method
