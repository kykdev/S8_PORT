.class public final Lcom/samsung/android/framework/res/R$interpolator;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/framework/res/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "interpolator"
.end annotation


# static fields
.field public static deceleration:I

.field public static sine_in_out_70:I

.field public static sine_in_out_90:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x50000

    sput v0, Lcom/samsung/android/framework/res/R$interpolator;->deceleration:I

    const v0, 0x50001

    sput v0, Lcom/samsung/android/framework/res/R$interpolator;->sine_in_out_70:I

    const v0, 0x50002

    sput v0, Lcom/samsung/android/framework/res/R$interpolator;->sine_in_out_90:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
