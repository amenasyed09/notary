import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoading extends StatelessWidget {
  const ShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildShimmerBox(150, 20),
                const SizedBox(height: 20),
                _buildShimmerBox(double.infinity, 40, radius: 25),
                const SizedBox(height: 24),
                _buildShimmerBox(120, 16),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(child: _buildShimmerBox(double.infinity, 200, radius: 16)),
                    const SizedBox(width: 12),
                    Expanded(child: _buildShimmerBox(double.infinity, 200, radius: 16)),
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildShimmerBox(150, 16),
                    _buildShimmerBox(50, 16),
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: index < 3 ? 16 : 0),
                        child: Column(
                          children: [
                            _buildShimmerBox(80, 80, radius: 40),
                            const SizedBox(height: 8),
                            _buildShimmerBox(60, 12),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildShimmerBox(120, 16),
                    _buildShimmerBox(50, 16),
                  ],
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
          ...List.generate(
            4,
                (index) => Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Row(
                children: [
                  _buildShimmerBox(60, 60, radius: 12),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildShimmerBox(120, 14),
                        const SizedBox(height: 6),
                        _buildShimmerBox(180, 12),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildShimmerBox(double width, double height, {double radius = 8}) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}